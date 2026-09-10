.class Lcom/vkontakte/android/WikiAttachment$FLinearLayout;
.super Landroid/widget/LinearLayout;
.source "WikiAttachment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/WikiAttachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FLinearLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/WikiAttachment;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/WikiAttachment;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/vkontakte/android/WikiAttachment$FLinearLayout;->this$0:Lcom/vkontakte/android/WikiAttachment;

    .line 99
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 100
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 102
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 103
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/vkontakte/android/WikiAttachment$FLinearLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/WikiAttachment$FLinearLayout;->setMeasuredDimension(II)V

    .line 104
    return-void
.end method
