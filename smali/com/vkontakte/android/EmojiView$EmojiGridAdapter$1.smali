.class Lcom/vkontakte/android/EmojiView$EmojiGridAdapter$1;
.super Landroid/widget/ImageView;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter$1;->this$1:Lcom/vkontakte/android/EmojiView$EmojiGridAdapter;

    .line 901
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 2
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    .line 903
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/EmojiView$EmojiGridAdapter$1;->setMeasuredDimension(II)V

    .line 904
    return-void
.end method
