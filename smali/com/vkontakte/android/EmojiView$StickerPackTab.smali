.class Lcom/vkontakte/android/EmojiView$StickerPackTab;
.super Ljava/lang/Object;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StickerPackTab"
.end annotation


# instance fields
.field public background:Ljava/lang/String;

.field public id:I

.field public stickers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/StickerAttachment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/EmojiView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/EmojiView$1;

    .prologue
    .line 1004
    invoke-direct {p0}, Lcom/vkontakte/android/EmojiView$StickerPackTab;-><init>()V

    return-void
.end method
