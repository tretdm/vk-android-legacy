.class Lcom/vkontakte/android/DocumentAttachment$FLinearLayout;
.super Landroid/widget/LinearLayout;
.source "DocumentAttachment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/DocumentAttachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FLinearLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/DocumentAttachment;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/DocumentAttachment;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/vkontakte/android/DocumentAttachment$FLinearLayout;->this$0:Lcom/vkontakte/android/DocumentAttachment;

    .line 117
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 118
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 120
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 121
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/vkontakte/android/DocumentAttachment$FLinearLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/DocumentAttachment$FLinearLayout;->setMeasuredDimension(II)V

    .line 122
    return-void
.end method
