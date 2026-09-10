.class Lcom/vkontakte/android/PhotoCommentsActivity$3;
.super Ljava/lang/Object;
.source "PhotoCommentsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoCommentsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoCommentsActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoCommentsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoCommentsActivity$3;->this$0:Lcom/vkontakte/android/PhotoCommentsActivity;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 110
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 114
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "len"    # I

    .prologue
    const v2, 0x7f060058

    .line 118
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 119
    iget-object v0, p0, Lcom/vkontakte/android/PhotoCommentsActivity$3;->this$0:Lcom/vkontakte/android/PhotoCommentsActivity;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/PhotoCommentsActivity$3;->this$0:Lcom/vkontakte/android/PhotoCommentsActivity;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/PhotoCommentsActivity$3;->this$0:Lcom/vkontakte/android/PhotoCommentsActivity;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/PhotoCommentsActivity$3;->this$0:Lcom/vkontakte/android/PhotoCommentsActivity;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method
