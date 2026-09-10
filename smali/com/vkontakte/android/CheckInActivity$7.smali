.class Lcom/vkontakte/android/CheckInActivity$7;
.super Ljava/lang/Object;
.source "CheckInActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/CheckInActivity$7;->this$0:Lcom/vkontakte/android/CheckInActivity;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 245
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 246
    if-nez p2, :cond_0

    .line 247
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity$7;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CheckInActivity;->access$10(Lcom/vkontakte/android/CheckInActivity;)Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity$7;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CheckInActivity;->access$10(Lcom/vkontakte/android/CheckInActivity;)Lcom/google/android/gms/maps/MapView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/maps/MapView;->getTop()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/MapView;->setTranslationY(F)V

    .line 248
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity$7;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CheckInActivity;->access$10(Lcom/vkontakte/android/CheckInActivity;)Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->invalidate()V

    .line 252
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 236
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity$7;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/CheckInActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity$7;->this$0:Lcom/vkontakte/android/CheckInActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/CheckInActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 238
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity$7;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/CheckInActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 239
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity$7;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/CheckInActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 241
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method
