.class Lcom/vkontakte/android/AudioListActivity$6;
.super Ljava/lang/Object;
.source "AudioListActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioListActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioListActivity$6;->this$0:Lcom/vkontakte/android/AudioListActivity;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 230
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 234
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "len"    # I

    .prologue
    .line 238
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity$6;->this$0:Lcom/vkontakte/android/AudioListActivity;

    const v1, 0x7f060123

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-lez p4, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity$6;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-static {v0}, Lcom/vkontakte/android/AudioListActivity;->access$10(Lcom/vkontakte/android/AudioListActivity;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity$6;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-static {v0}, Lcom/vkontakte/android/AudioListActivity;->access$10(Lcom/vkontakte/android/AudioListActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioListActivity$6;->this$0:Lcom/vkontakte/android/AudioListActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioListActivity;->localSearch(Ljava/lang/String;)V

    .line 243
    return-void

    .line 238
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
