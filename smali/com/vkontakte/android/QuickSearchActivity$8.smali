.class Lcom/vkontakte/android/QuickSearchActivity$8;
.super Ljava/lang/Object;
.source "QuickSearchActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/SearchGetHints$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/QuickSearchActivity;->searchFromNetwork(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 277
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/QuickSearchActivity;->access$12(Lcom/vkontakte/android/QuickSearchActivity;Lcom/vkontakte/android/APIRequest;)V

    .line 278
    iget-object v1, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const v0, 0x7f060051

    :goto_0
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 279
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkontakte/android/QuickSearchActivity;->access$10(Lcom/vkontakte/android/QuickSearchActivity;)Lcom/vkontakte/android/ui/LoadMoreFooterView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 280
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0, v2}, Lcom/vkontakte/android/QuickSearchActivity;->access$18(Lcom/vkontakte/android/QuickSearchActivity;Z)V

    .line 281
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkontakte/android/QuickSearchActivity;->access$13(Lcom/vkontakte/android/QuickSearchActivity;)V

    .line 282
    return-void

    .line 278
    :cond_0
    const v0, 0x7f06004e

    goto :goto_0
.end method

.method public success(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/UserProfile;>;"
    const/4 v7, 0x0

    .line 256
    iget-object v3, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/vkontakte/android/QuickSearchActivity;->access$12(Lcom/vkontakte/android/QuickSearchActivity;Lcom/vkontakte/android/APIRequest;)V

    .line 257
    iget-object v3, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v3}, Lcom/vkontakte/android/QuickSearchActivity;->access$1(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 258
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 270
    iget-object v3, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v3}, Lcom/vkontakte/android/QuickSearchActivity;->access$10(Lcom/vkontakte/android/QuickSearchActivity;)Lcom/vkontakte/android/ui/LoadMoreFooterView;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 271
    iget-object v3, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v3, v7}, Lcom/vkontakte/android/QuickSearchActivity;->access$18(Lcom/vkontakte/android/QuickSearchActivity;Z)V

    .line 272
    iget-object v3, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v3}, Lcom/vkontakte/android/QuickSearchActivity;->access$13(Lcom/vkontakte/android/QuickSearchActivity;)V

    .line 273
    return-void

    .line 258
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 259
    .local v1, "pG":Lcom/vkontakte/android/UserProfile;
    const/4 v0, 0x0

    .line 260
    .local v0, "found":Z
    iget-object v4, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v4}, Lcom/vkontakte/android/QuickSearchActivity;->access$0(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 266
    :goto_1
    if-nez v0, :cond_0

    .line 267
    iget-object v4, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v4}, Lcom/vkontakte/android/QuickSearchActivity;->access$1(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 260
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    .line 261
    .local v2, "pL":Lcom/vkontakte/android/UserProfile;
    iget v5, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    iget v6, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v5, v6, :cond_2

    .line 262
    const/4 v0, 0x1

    .line 263
    goto :goto_1
.end method
