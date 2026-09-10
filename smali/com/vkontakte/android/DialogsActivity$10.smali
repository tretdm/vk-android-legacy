.class Lcom/vkontakte/android/DialogsActivity$10;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/DialogsActivity;->showLoading(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/DialogsActivity;

.field private final synthetic val$l:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/DialogsActivity;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/DialogsActivity$10;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iput-boolean p2, p0, Lcom/vkontakte/android/DialogsActivity$10;->val$l:Z

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 499
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity$10;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iget-object v4, v1, Lcom/vkontakte/android/DialogsActivity;->progress:Landroid/widget/ProgressBar;

    iget-boolean v1, p0, Lcom/vkontakte/android/DialogsActivity$10;->val$l:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 500
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity$10;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iget-object v4, v1, Lcom/vkontakte/android/DialogsActivity;->noMsgText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity$10;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iget-boolean v1, v1, Lcom/vkontakte/android/DialogsActivity;->searching:Z

    if-eqz v1, :cond_3

    sget v1, Lcom/vkontakte/android/DialogsActivity;->numSearchResults:I

    if-nez v1, :cond_4

    :cond_0
    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 501
    iget-boolean v1, p0, Lcom/vkontakte/android/DialogsActivity$10;->val$l:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity$10;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iget-object v1, v1, Lcom/vkontakte/android/DialogsActivity;->noMsgText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 502
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/DialogsActivity$10;->this$0:Lcom/vkontakte/android/DialogsActivity;

    iget-object v1, v1, Lcom/vkontakte/android/DialogsActivity;->views:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    .line 503
    return-void

    :cond_2
    move v1, v3

    .line 499
    goto :goto_0

    .line 500
    :cond_3
    sget v1, Lcom/vkontakte/android/DialogsActivity;->numDialogs:I

    if-eqz v1, :cond_0

    :cond_4
    move v1, v3

    goto :goto_1

    .line 502
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "v":Landroid/view/View;
    iget-boolean v1, p0, Lcom/vkontakte/android/DialogsActivity$10;->val$l:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_6
    move v1, v2

    goto :goto_3
.end method
