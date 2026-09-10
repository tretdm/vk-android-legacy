.class Lcom/vkontakte/android/StickerAttachment$2;
.super Landroid/widget/ImageView;
.source "StickerAttachment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/StickerAttachment;->getFullView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/StickerAttachment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/StickerAttachment;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/StickerAttachment$2;->this$0:Lcom/vkontakte/android/StickerAttachment;

    .line 66
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 3
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vkontakte/android/StickerAttachment$2;->this$0:Lcom/vkontakte/android/StickerAttachment;

    iget v0, v0, Lcom/vkontakte/android/StickerAttachment;->width:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/vkontakte/android/StickerAttachment$2;->this$0:Lcom/vkontakte/android/StickerAttachment;

    iget v1, v1, Lcom/vkontakte/android/StickerAttachment;->height:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/StickerAttachment$2;->setMeasuredDimension(II)V

    .line 69
    return-void
.end method
