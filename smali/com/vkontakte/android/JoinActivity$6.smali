.class Lcom/vkontakte/android/JoinActivity$6;
.super Ljava/lang/Object;
.source "JoinActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    iput-object p1, p0, Lcom/vkontakte/android/JoinActivity$6;->this$0:Lcom/vkontakte/android/JoinActivity;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 121
    if-eqz p2, :cond_0

    .line 122
    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity$6;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-static {v0}, Lcom/vkontakte/android/JoinActivity;->access$4(Lcom/vkontakte/android/JoinActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/JoinActivity$6;->this$0:Lcom/vkontakte/android/JoinActivity;

    iget-object v1, p0, Lcom/vkontakte/android/JoinActivity$6;->this$0:Lcom/vkontakte/android/JoinActivity;

    invoke-static {v1}, Lcom/vkontakte/android/JoinActivity;->access$4(Lcom/vkontakte/android/JoinActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/JoinActivity;->access$8(Lcom/vkontakte/android/JoinActivity;Ljava/lang/String;)V

    .line 124
    :cond_0
    return-void
.end method
