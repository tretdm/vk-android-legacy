.class Lcom/vkontakte/android/NewsfeedSearchActivity$1;
.super Ljava/lang/Object;
.source "NewsfeedSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsfeedSearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsfeedSearchActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsfeedSearchActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsfeedSearchActivity$1;->this$0:Lcom/vkontakte/android/NewsfeedSearchActivity;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 34
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedSearchActivity$1;->this$0:Lcom/vkontakte/android/NewsfeedSearchActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/NewsfeedSearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 35
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedSearchActivity$1;->this$0:Lcom/vkontakte/android/NewsfeedSearchActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/NewsfeedSearchActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 37
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedSearchActivity$1;->this$0:Lcom/vkontakte/android/NewsfeedSearchActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/NewsfeedSearchActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedSearchActivity$1;->this$0:Lcom/vkontakte/android/NewsfeedSearchActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/NewsfeedSearchActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 39
    :cond_0
    return-void
.end method
