#-*- coding:utf-8 _*-
"""
@author:lyy
@file: http_test.py
@time: 2019/08/19
@Software: PyCharm
"""

import json
import http.client

#处理http请求
def post_req(host, port, method, url, s):
    '''
    :param host:
    :param port:
    :param method:
    :param url:
    :param s String:
    :return: str
    '''
    conn = http.client.HTTPConnection(host, port)
    headers = {"Content-type": "application/json", "Accept": "text/plain"}
    conn.request(method, url, s, headers)
    response = conn.getresponse()
    #print(response.status, response.reason)
    data = response.read().decode('utf8')
    return data

str1 = '1月24日，新华社对外发布了中央对雄安新区的指导意见，洋洋洒洒1.2万多字，17次提到北京，4次提到天津，信息量很大，其实也回答了人们关心的很多问题。'
id = 111
s = json.dumps({"id": id, "texts": [list(str1)], "is_tokenized": "false"})

host, port, method, url = ["10.15.83.198", 8655, "POST", "/encode"]
data = json.loads(post_req(host, port, method, url, s))["result"]
print(data[0])
