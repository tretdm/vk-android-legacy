.class Lcom/vkontakte/android/fragments/ChatFragment$26;
.super Landroid/widget/ImageView;
.source "ChatFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ChatFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 1411
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$26;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 1
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    .line 1413
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1414
    .local v0, "h":I
    invoke-virtual {p0, v0, v0}, Lcom/vkontakte/android/fragments/ChatFragment$26;->setMeasuredDimension(II)V

    .line 1415
    return-void
.end method
