.class Lcom/vkontakte/android/NewPostActivity$10;
.super Ljava/lang/Object;
.source "NewPostActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewPostActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewPostActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewPostActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity$10;->this$0:Lcom/vkontakte/android/NewPostActivity;

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 348
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$10;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewPostActivity;->access$2(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/MultiAttachView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v1

    if-nez v1, :cond_0

    .line 353
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$10;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewPostActivity;->access$3(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/LocationAttachView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/LocationAttachView;->setVisibility(I)V

    .line 350
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$10;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewPostActivity;->access$2(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/MultiAttachView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    .line 351
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$10;->this$0:Lcom/vkontakte/android/NewPostActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/NewPostActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 352
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$10;->this$0:Lcom/vkontakte/android/NewPostActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/NewPostActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
