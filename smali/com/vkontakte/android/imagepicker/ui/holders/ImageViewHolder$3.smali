.class Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$3;
.super Lcom/vkontakte/android/imagepicker/ui/LocalImageView;
.source "ImageViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->initialize(Landroid/content/Context;ILcom/vkontakte/android/imagepicker/entries/ImageEntry;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;Landroid/content/Context;ILandroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # I

    .prologue
    .line 1
    .local p4, "$anonymous2":Landroid/widget/AdapterView$OnItemClickListener;, "Landroid/widget/AdapterView$OnItemClickListener;"
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$3;->this$0:Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;

    .line 139
    invoke-direct {p0, p2, p3, p4}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;-><init>(Landroid/content/Context;ILandroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 144
    sget v0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->measuredWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 145
    invoke-super {p0, p1, p2}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->onMeasure(II)V

    .line 148
    :goto_0
    return-void

    .line 147
    :cond_0
    sget v0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->measuredWidth:I

    sget v1, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->measuredWidth:I

    invoke-super {p0, v0, v1}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->onMeasure(II)V

    goto :goto_0
.end method
