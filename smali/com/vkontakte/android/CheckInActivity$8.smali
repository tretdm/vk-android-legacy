.class Lcom/vkontakte/android/CheckInActivity$8;
.super Ljava/lang/Object;
.source "CheckInActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/CheckInActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/CheckInActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/CheckInActivity;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/vkontakte/android/CheckInActivity$8;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 285
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 286
    const/4 p1, 0x0

    .line 287
    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 288
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity$8;->this$0:Lcom/vkontakte/android/CheckInActivity;

    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity$8;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CheckInActivity;->access$1200(Lcom/vkontakte/android/CheckInActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/CheckInActivity;->access$802(Lcom/vkontakte/android/CheckInActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 289
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity$8;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CheckInActivity;->access$1200(Lcom/vkontakte/android/CheckInActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 290
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity$8;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CheckInActivity;->access$1300(Lcom/vkontakte/android/CheckInActivity;)Lcom/vkontakte/android/ui/LoadMoreFooterView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 294
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity$8;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CheckInActivity;->access$1500(Lcom/vkontakte/android/CheckInActivity;)V

    .line 295
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity$8;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CheckInActivity;->access$1100(Lcom/vkontakte/android/CheckInActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity$8;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CheckInActivity;->access$700(Lcom/vkontakte/android/CheckInActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity$8;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CheckInActivity;->access$1100(Lcom/vkontakte/android/CheckInActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 298
    :cond_1
    if-eqz p1, :cond_2

    .line 299
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity$8;->this$0:Lcom/vkontakte/android/CheckInActivity;

    new-instance v1, Lcom/vkontakte/android/CheckInActivity$SearchLoader;

    iget-object v2, p0, Lcom/vkontakte/android/CheckInActivity$8;->this$0:Lcom/vkontakte/android/CheckInActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/vkontakte/android/CheckInActivity$SearchLoader;-><init>(Lcom/vkontakte/android/CheckInActivity;Lcom/vkontakte/android/CheckInActivity$1;)V

    invoke-static {v0, v1}, Lcom/vkontakte/android/CheckInActivity;->access$1102(Lcom/vkontakte/android/CheckInActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 300
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity$8;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CheckInActivity;->access$700(Lcom/vkontakte/android/CheckInActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity$8;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CheckInActivity;->access$1100(Lcom/vkontakte/android/CheckInActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 302
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 292
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity$8;->this$0:Lcom/vkontakte/android/CheckInActivity;

    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity$8;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CheckInActivity;->access$1400(Lcom/vkontakte/android/CheckInActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/CheckInActivity;->access$802(Lcom/vkontakte/android/CheckInActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 271
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity$8;->this$0:Lcom/vkontakte/android/CheckInActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/CheckInActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 272
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity$8;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/CheckInActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 273
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity$8;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CheckInActivity;->access$1100(Lcom/vkontakte/android/CheckInActivity;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity$8;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CheckInActivity;->access$700(Lcom/vkontakte/android/CheckInActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/CheckInActivity$8;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v2}, Lcom/vkontakte/android/CheckInActivity;->access$1100(Lcom/vkontakte/android/CheckInActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 275
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity$8;->this$0:Lcom/vkontakte/android/CheckInActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vkontakte/android/CheckInActivity;->access$1102(Lcom/vkontakte/android/CheckInActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 277
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    .line 278
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity$8;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v1, p1}, Lcom/vkontakte/android/CheckInActivity;->access$400(Lcom/vkontakte/android/CheckInActivity;Ljava/lang/String;)V

    .line 280
    const/4 v1, 0x1

    return v1
.end method
