"""HDL Editor MVP - エントリーポイント"""

import sys
import logging
from typing import NoReturn

logger = logging.getLogger(__name__)


def main() -> NoReturn:
    """メインエントリーポイント"""
    logger.info("Starting HDL Editor MVP")
    
    # TODO: アプリケーション起動処理を実装
    print("HDL Editor MVP - Coming Soon!")
    print("Project initialized successfully.")
    
    sys.exit(0)


if __name__ == "__main__":
    logging.basicConfig(
        level=logging.INFO,
        format="%(asctime)s - %(name)s - %(levelname)s - %(message)s"
    )
    main()