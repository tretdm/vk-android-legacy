.class Lcom/vkontakte/android/EmojiPickerView$XImageView;
.super Landroid/widget/ImageView;
.source "EmojiPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/EmojiPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XImageView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/EmojiPickerView;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/EmojiPickerView;Landroid/content/Context;)V
    .locals 0
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/vkontakte/android/EmojiPickerView$XImageView;->this$0:Lcom/vkontakte/android/EmojiPickerView;

    .line 215
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 216
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 2
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    .line 218
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 219
    invoke-virtual {p0}, Lcom/vkontakte/android/EmojiPickerView$XImageView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/vkontakte/android/EmojiPickerView$XImageView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/EmojiPickerView$XImageView;->setMeasuredDimension(II)V

    .line 220
    return-void
.end method
