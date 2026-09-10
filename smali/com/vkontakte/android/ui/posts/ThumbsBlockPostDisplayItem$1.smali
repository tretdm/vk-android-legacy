.class Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$1;
.super Landroid/widget/FrameLayout;
.source "ThumbsBlockPostDisplayItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;->getView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$1;->this$0:Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem;

    .line 59
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 2
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 62
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$1;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/ui/posts/ThumbsBlockPostDisplayItem$1;->setMeasuredDimension(II)V

    .line 63
    return-void
.end method
