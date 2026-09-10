.class Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder$1;
.super Landroid/widget/FrameLayout;
.source "ImageViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->initialize(Landroid/content/Context;ILcom/vkontakte/android/mediapicker/entries/ImageEntry;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder$1;->this$0:Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 73
    sput p1, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->measuredWidth:I

    .line 75
    invoke-super {p0, p1, p1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 76
    return-void
.end method
