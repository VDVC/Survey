#!/usr/bin/env python
# -*- coding: utf-8 -*-

from socket import inet_ntoa
from struct import pack

def community(url):
    if "vdvc.de" in url:
        return "VDVC"
    elif "spielkultur.ea.de" in url:
        return "EA"
    elif "worldofplayers" in url:
        return "WoP"
    elif "steam" in url:
        return "Steam"
    elif "3dcenter.org" in url:
        return "3DCenter"
    elif "reddit.com" in url:
        return "Reddit"
    else:
        return "?"

def freigabe(string):
    parts = string.replace(',','_').split('_')
    kandidat=21
    for part in parts:
        if part.isnumeric():
            kandidat = min(kandidat,int(part))
        elif u"OA" in part:
            return u"USK0"
        elif u"KJ" in part:
            kandidat = min(kandidat,18)
    if kandidat == 21:
        return u""
    else:
        return u'USK'+unicode(kandidat)

def long2ip(ip):
    ip=int(ip)
    if ip < 0:
        ip = ip & 0xffffffff
    return inet_ntoa(pack("!L", ip))
