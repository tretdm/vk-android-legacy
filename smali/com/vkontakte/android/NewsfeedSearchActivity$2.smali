.class Lcom/vkontakte/android/NewsfeedSearchActivity$2;
.super Ljava/lang/Object;
.source "NewsfeedSearchActivity.java"

# interfaces
.implements Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;


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

.field private final synthetic val$view:Lcom/vkontakte/android/NewsView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsfeedSearchActivity;Lcom/vkontakte/android/NewsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsfeedSearchActivity$2;->this$0:Lcom/vkontakte/android/NewsfeedSearchActivity;

    iput-object p2, p0, Lcom/vkontakte/android/NewsfeedSearchActivity$2;->val$view:Lcom/vkontakte/android/NewsView;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 61
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedSearchActivity$2;->val$view:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v1, p1}, Lcom/vkontakte/android/NewsView;->setSearchQuery(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedSearchActivity$2;->val$view:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v1, v3}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    .line 63
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedSearchActivity$2;->this$0:Lcom/vkontakte/android/NewsfeedSearchActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/NewsfeedSearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 64
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedSearchActivity$2;->this$0:Lcom/vkontakte/android/NewsfeedSearchActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/NewsfeedSearchActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 65
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedSearchActivity$2;->val$view:Lcom/vkontakte/android/NewsView;

    invoke-virtual {v1}, Lcom/vkontakte/android/NewsView;->requestFocus()Z

    .line 66
    return v3
.end method
