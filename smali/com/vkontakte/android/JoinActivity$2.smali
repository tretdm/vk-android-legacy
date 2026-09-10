.class Lcom/vkontakte/android/JoinActivity$2;
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
    iput-object p1, p0, Lcom/vkontakte/android/JoinActivity$2;->this$0:Lcom/vkontakte/android/JoinActivity;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity$2;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-static {v0}, Lcom/vkontakte/android/JoinActivity;->access$4(Lcom/vkontakte/android/JoinActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity$2;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-static {v0}, Lcom/vkontakte/android/JoinActivity;->access$4(Lcom/vkontakte/android/JoinActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 83
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity$2;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-static {v0}, Lcom/vkontakte/android/JoinActivity;->access$5(Lcom/vkontakte/android/JoinActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity$2;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-static {v0}, Lcom/vkontakte/android/JoinActivity;->access$5(Lcom/vkontakte/android/JoinActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity$2;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-static {v0, v1, v1}, Lcom/vkontakte/android/JoinActivity;->access$6(Lcom/vkontakte/android/JoinActivity;ZZ)V

    goto :goto_0
.end method
