.class Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder$2;
.super Lcom/vkontakte/android/mediapicker/ui/LocalImageView;
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
.method constructor <init>(Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;Landroid/content/Context;ILandroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I
    .param p4, "x2"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder$2;->this$0:Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;

    invoke-direct {p0, p2, p3, p4}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;-><init>(Landroid/content/Context;ILandroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 85
    sget v0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->measuredWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 86
    invoke-super {p0, p1, p2}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->onMeasure(II)V

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    sget v0, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->measuredWidth:I

    sget v1, Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;->measuredWidth:I

    invoke-super {p0, v0, v1}, Lcom/vkontakte/android/mediapicker/ui/LocalImageView;->onMeasure(II)V

    goto :goto_0
.end method
