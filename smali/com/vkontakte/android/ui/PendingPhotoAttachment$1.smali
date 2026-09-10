.class Lcom/vkontakte/android/ui/PendingPhotoAttachment$1;
.super Landroid/view/View;
.source "PendingPhotoAttachment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/PendingPhotoAttachment;->getFullView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/PendingPhotoAttachment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/PendingPhotoAttachment;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/PendingPhotoAttachment$1;->this$0:Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    .line 69
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 2
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/ui/PendingPhotoAttachment$1;->this$0:Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->access$0(Lcom/vkontakte/android/ui/PendingPhotoAttachment;)I

    move-result v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/PendingPhotoAttachment$1;->this$0:Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    invoke-static {v1}, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->access$1(Lcom/vkontakte/android/ui/PendingPhotoAttachment;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/ui/PendingPhotoAttachment$1;->setMeasuredDimension(II)V

    .line 72
    return-void
.end method
