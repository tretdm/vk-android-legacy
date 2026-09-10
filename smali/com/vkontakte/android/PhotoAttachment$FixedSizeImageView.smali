.class Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;
.super Landroid/widget/ImageView;
.source "PhotoAttachment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/PhotoAttachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FixedSizeImageView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoAttachment;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/PhotoAttachment;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->this$0:Lcom/vkontakte/android/PhotoAttachment;

    .line 175
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 176
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->this$0:Lcom/vkontakte/android/PhotoAttachment;

    iget v0, v0, Lcom/vkontakte/android/PhotoAttachment;->displayW:I

    iget-object v1, p0, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->this$0:Lcom/vkontakte/android/PhotoAttachment;

    iget v1, v1, Lcom/vkontakte/android/PhotoAttachment;->displayH:I

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->setMeasuredDimension(II)V

    .line 180
    return-void
.end method
