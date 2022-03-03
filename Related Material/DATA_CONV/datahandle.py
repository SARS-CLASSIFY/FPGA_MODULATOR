import sys


def delblankline(infile, outfile):
    in_open = open(infile, 'r', encoding="utf-8")
    out_open = open(outfile, 'w', encoding="utf-8")
    db = in_open.readlines()

    for line in db:
        line_re = line.replace(' ', '')
        if '0' <= line_re[0] <= '9' or line_re.startswith('-'):
            out_open.write(line_re.replace('\n', ' '))

    in_open.close()
    out_open.close()


lst = input("输入文件名称").split()
delblankline(lst[0], lst[1])
