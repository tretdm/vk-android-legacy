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

.field final synthetic val$q:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/QuickSearchActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    iput-object p2, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->val$q:Ljava/lang/String;

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

    .line 318
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/QuickSearchActivity;->access$502(Lcom/vkontakte/android/QuickSearchActivity;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 319
    iget-object v1, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const v0, 0x7f0d00ce

    :goto_0
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 320
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkontakte/android/QuickSearchActivity;->access$400(Lcom/vkontakte/android/QuickSearchActivity;)Lcom/vkontakte/android/ui/LoadMoreFooterView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 321
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0, v2}, Lcom/vkontakte/android/QuickSearchActivity;->access$1602(Lcom/vkontakte/android/QuickSearchActivity;Z)Z

    .line 322
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkontakte/android/QuickSearchActivity;->access$700(Lcom/vkontakte/android/QuickSearchActivity;)V

    .line 323
    return-void

    .line 319
    :cond_0
    const v0, 0x7f0d00d0

    goto :goto_0
.end method

.method public success(Ljava/util/List;)V
    .locals 13
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
    .line 263
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/UserProfile;>;"
    iget-object v11, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/vkontakte/android/QuickSearchActivity;->access$502(Lcom/vkontakte/android/QuickSearchActivity;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 264
    iget-object v11, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v11}, Lcom/vkontakte/android/QuickSearchActivity;->access$600(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 265
    const/4 v4, 0x0

    .line 267
    .local v4, "linkProfile":Lcom/vkontakte/android/UserProfile;
    :try_start_0
    const-string v11, "^(?:(?:http|https)://)?(?:vk\\.com|vkontakte\\.ru)?/?([a-zA-Z0-9_\\.\\?=&%-]+)$"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 268
    .local v9, "ptn":Ljava/util/regex/Pattern;
    iget-object v11, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->val$q:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 269
    .local v5, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 271
    iget-object v11, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/vkontakte/android/QuickSearchActivity;->access$202(Lcom/vkontakte/android/QuickSearchActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 272
    iget-object v11, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v11}, Lcom/vkontakte/android/QuickSearchActivity;->access$200(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "id[0-9]+"

    invoke-virtual {v11, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v11}, Lcom/vkontakte/android/QuickSearchActivity;->access$200(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "club[0-9]+"

    invoke-virtual {v11, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 273
    new-instance v6, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v6}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 274
    .local v6, "p":Lcom/vkontakte/android/UserProfile;
    iget-object v11, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    const v12, 0x7f0d002d

    invoke-virtual {v11, v12}, Lcom/vkontakte/android/QuickSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 275
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "vk.com/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v12}, Lcom/vkontakte/android/QuickSearchActivity;->access$200(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    .line 276
    iget-object v11, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v11}, Lcom/vkontakte/android/QuickSearchActivity;->access$600(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    move-object v4, v6

    .line 294
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    .end local v6    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v9    # "ptn":Ljava/util/regex/Pattern;
    :cond_0
    :goto_0
    new-instance v0, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v0}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 295
    .local v0, "extSearchProfile":Lcom/vkontakte/android/UserProfile;
    iget-object v11, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    const v12, 0x7f0d0311

    invoke-virtual {v11, v12}, Lcom/vkontakte/android/QuickSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 296
    const v11, 0x7fffffff

    iput v11, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 297
    const/4 v11, 0x0

    iput-object v11, v0, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    .line 298
    iget-object v11, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v11}, Lcom/vkontakte/android/QuickSearchActivity;->access$600(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/UserProfile;

    .line 300
    .local v7, "pG":Lcom/vkontakte/android/UserProfile;
    const/4 v1, 0x0

    .line 301
    .local v1, "found":Z
    iget-object v11, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v11}, Lcom/vkontakte/android/QuickSearchActivity;->access$1500(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/UserProfile;

    .line 302
    .local v8, "pL":Lcom/vkontakte/android/UserProfile;
    iget v11, v7, Lcom/vkontakte/android/UserProfile;->uid:I

    iget v12, v8, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v11, v12, :cond_2

    .line 303
    const/4 v1, 0x1

    .line 307
    .end local v8    # "pL":Lcom/vkontakte/android/UserProfile;
    :cond_3
    if-nez v1, :cond_1

    .line 308
    iget-object v11, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v11}, Lcom/vkontakte/android/QuickSearchActivity;->access$600(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 280
    .end local v0    # "extSearchProfile":Lcom/vkontakte/android/UserProfile;
    .end local v1    # "found":Z
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "pG":Lcom/vkontakte/android/UserProfile;
    .restart local v5    # "matcher":Ljava/util/regex/Matcher;
    .restart local v9    # "ptn":Ljava/util/regex/Pattern;
    :cond_4
    :try_start_1
    const-string v11, "^@([a-zA-Z0-9_\\.-]+)$"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 281
    iget-object v11, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->val$q:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 282
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 283
    iget-object v11, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/vkontakte/android/QuickSearchActivity;->access$202(Lcom/vkontakte/android/QuickSearchActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 285
    new-instance v6, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v6}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 286
    .restart local v6    # "p":Lcom/vkontakte/android/UserProfile;
    iget-object v11, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    const v12, 0x7f0d002d

    invoke-virtual {v11, v12}, Lcom/vkontakte/android/QuickSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 287
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "vk.com/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v12}, Lcom/vkontakte/android/QuickSearchActivity;->access$200(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    .line 288
    iget-object v11, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v11}, Lcom/vkontakte/android/QuickSearchActivity;->access$600(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 289
    move-object v4, v6

    goto/16 :goto_0

    .line 293
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    .end local v6    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v9    # "ptn":Ljava/util/regex/Pattern;
    :catch_0
    move-exception v10

    .local v10, "x":Ljava/lang/Exception;
    const-string v11, "vk"

    invoke-static {v11, v10}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 311
    .end local v10    # "x":Ljava/lang/Exception;
    .restart local v0    # "extSearchProfile":Lcom/vkontakte/android/UserProfile;
    :cond_5
    iget-object v11, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v11}, Lcom/vkontakte/android/QuickSearchActivity;->access$400(Lcom/vkontakte/android/QuickSearchActivity;)Lcom/vkontakte/android/ui/LoadMoreFooterView;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 312
    iget-object v11, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/vkontakte/android/QuickSearchActivity;->access$1602(Lcom/vkontakte/android/QuickSearchActivity;Z)Z

    .line 313
    iget-object v11, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v11}, Lcom/vkontakte/android/QuickSearchActivity;->access$700(Lcom/vkontakte/android/QuickSearchActivity;)V

    .line 314
    return-void
.end method
