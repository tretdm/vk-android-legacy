.class Lcom/vkontakte/android/JoinActivity$1;
.super Ljava/lang/Object;
.source "JoinActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/JoinActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/JoinActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/JoinActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/JoinActivity$1;->this$0:Lcom/vkontakte/android/JoinActivity;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity$1;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-static {v0}, Lcom/vkontakte/android/JoinActivity;->access$0(Lcom/vkontakte/android/JoinActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity$1;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-static {v0}, Lcom/vkontakte/android/JoinActivity;->access$0(Lcom/vkontakte/android/JoinActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 66
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity$1;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-static {v0}, Lcom/vkontakte/android/JoinActivity;->access$1(Lcom/vkontakte/android/JoinActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity$1;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-static {v0}, Lcom/vkontakte/android/JoinActivity;->access$1(Lcom/vkontakte/android/JoinActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity$1;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-static {v0}, Lcom/vkontakte/android/JoinActivity;->access$2(Lcom/vkontakte/android/JoinActivity;)I

    move-result v0

    if-nez v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity$1;->this$0:Lcom/vkontakte/android/JoinActivity;

    const v1, 0x7f090148

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity$1;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-static {v0}, Lcom/vkontakte/android/JoinActivity;->access$3(Lcom/vkontakte/android/JoinActivity;)Landroid/widget/ViewFlipper;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/JoinActivity$1;->this$0:Lcom/vkontakte/android/JoinActivity;

    const v2, 0x7f040005

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 63
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity$1;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-static {v0}, Lcom/vkontakte/android/JoinActivity;->access$3(Lcom/vkontakte/android/JoinActivity;)Landroid/widget/ViewFlipper;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/JoinActivity$1;->this$0:Lcom/vkontakte/android/JoinActivity;

    const v2, 0x7f040007

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 64
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity$1;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-static {v0}, Lcom/vkontakte/android/JoinActivity;->access$3(Lcom/vkontakte/android/JoinActivity;)Landroid/widget/ViewFlipper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 65
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity$1;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-static {v0}, Lcom/vkontakte/android/JoinActivity;->access$4(Lcom/vkontakte/android/JoinActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method
