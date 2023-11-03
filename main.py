""" A fire CLI example"""

import fire


def main(name="World"):
    """a fire CLI example"""
    return 'Hello {name}!'.format(name=name)


if __name__ == "__main__":
    fire.Fire(main)
