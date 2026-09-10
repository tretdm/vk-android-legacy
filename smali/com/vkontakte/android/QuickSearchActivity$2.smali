.class Lcom/vkontakte/android/QuickSearchActivity$2;
.super Ljava/lang/Object;
.source "QuickSearchActivity.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/QuickSearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/QuickSearchActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/QuickSearchActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/QuickSearchActivity$2;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStarted()V
    .locals 4

    .prologue
    .line 132
    iget-object v2, p0, Lcom/vkontakte/android/QuickSearchActivity$2;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/QuickSearchActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/vkontakte/android/QuickSearchActivity$2;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/QuickSearchActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 134
    .local v0, "f":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 135
    iget-object v2, p0, Lcom/vkontakte/android/QuickSearchActivity$2;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/QuickSearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 136
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 138
    .end local v0    # "f":Landroid/view/View;
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method
