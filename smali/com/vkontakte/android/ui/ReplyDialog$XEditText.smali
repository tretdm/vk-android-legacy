.class Lcom/vkontakte/android/ui/ReplyDialog$XEditText;
.super Landroid/widget/EditText;
.source "ReplyDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ui/ReplyDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XEditText"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/ReplyDialog;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/ui/ReplyDialog;Landroid/content/Context;)V
    .locals 0
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/vkontakte/android/ui/ReplyDialog$XEditText;->this$0:Lcom/vkontakte/android/ui/ReplyDialog;

    .line 140
    invoke-direct {p0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 141
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 2
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    .line 143
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onMeasure(II)V

    .line 144
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x43fa0000    # 500.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReplyDialog$XEditText;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/ui/ReplyDialog$XEditText;->setMeasuredDimension(II)V

    .line 145
    return-void
.end method
