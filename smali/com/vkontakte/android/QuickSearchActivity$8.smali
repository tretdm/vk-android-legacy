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

.field private final synthetic val$q:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/QuickSearchActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    iput-object p2, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->val$q:Ljava/lang/String;

    .line 265
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

    .line 324
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/QuickSearchActivity;->access$13(Lcom/vkontakte/android/QuickSearchActivity;Lcom/vkontakte/android/APIRequest;)V

    .line 325
    iget-object v1, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const v0, 0x7f08006b

    :goto_0
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 326
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkontakte/android/QuickSearchActivity;->access$11(Lcom/vkontakte/android/QuickSearchActivity;)Lcom/vkontakte/android/ui/LoadMoreFooterView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 327
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0, v2}, Lcom/vkontakte/android/QuickSearchActivity;->access$20(Lcom/vkontakte/android/QuickSearchActivity;Z)V

    .line 328
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkontakte/android/QuickSearchActivity;->access$14(Lcom/vkontakte/android/QuickSearchActivity;)V

    .line 329
    return-void

    .line 325
    :cond_0
    const v0, 0x7f080068

    goto :goto_0
.end method

.method public success(Ljava/util/List;)V
    .locals 14
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
    const/4 v11, 0x0

    const/4 v13, 0x0

    .line 269
    iget-object v9, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v9, v11}, Lcom/vkontakte/android/QuickSearchActivity;->access$13(Lcom/vkontakte/android/QuickSearchActivity;Lcom/vkontakte/android/APIRequest;)V

    .line 270
    iget-object v9, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v9}, Lcom/vkontakte/android/QuickSearchActivity;->access$1(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 271
    const/4 v2, 0x0

    .line 273
    .local v2, "linkProfile":Lcom/vkontakte/android/UserProfile;
    :try_start_0
    const-string v9, "^(?:(?:http|https)://)?(?:vk\\.com|vkontakte\\.ru)?/?([a-zA-Z0-9_\\.\\?=&%-]+)$"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 274
    .local v7, "ptn":Ljava/util/regex/Pattern;
    iget-object v9, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->val$q:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 275
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 277
    iget-object v9, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/vkontakte/android/QuickSearchActivity;->access$19(Lcom/vkontakte/android/QuickSearchActivity;Ljava/lang/String;)V

    .line 278
    iget-object v9, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v9}, Lcom/vkontakte/android/QuickSearchActivity;->access$10(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "id[0-9]+"

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v9}, Lcom/vkontakte/android/QuickSearchActivity;->access$10(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "club[0-9]+"

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 279
    new-instance v4, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v4}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 280
    .local v4, "p":Lcom/vkontakte/android/UserProfile;
    iget-object v9, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    const v10, 0x7f08003e

    invoke-virtual {v9, v10}, Lcom/vkontakte/android/QuickSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 281
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "vk.com/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v10}, Lcom/vkontakte/android/QuickSearchActivity;->access$10(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    .line 282
    iget-object v9, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v9}, Lcom/vkontakte/android/QuickSearchActivity;->access$1(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    move-object v2, v4

    .line 300
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    .end local v4    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v7    # "ptn":Ljava/util/regex/Pattern;
    :cond_0
    :goto_0
    new-instance v0, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v0}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 301
    .local v0, "extSearchProfile":Lcom/vkontakte/android/UserProfile;
    iget-object v9, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    const v10, 0x7f08034e

    invoke-virtual {v9, v10}, Lcom/vkontakte/android/QuickSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 302
    const v9, 0x7fffffff

    iput v9, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 303
    iput-object v11, v0, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    .line 304
    iget-object v9, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v9}, Lcom/vkontakte/android/QuickSearchActivity;->access$1(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_3

    .line 317
    iget-object v9, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v9}, Lcom/vkontakte/android/QuickSearchActivity;->access$11(Lcom/vkontakte/android/QuickSearchActivity;)Lcom/vkontakte/android/ui/LoadMoreFooterView;

    move-result-object v9

    invoke-virtual {v9, v13}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 318
    iget-object v9, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v9, v13}, Lcom/vkontakte/android/QuickSearchActivity;->access$20(Lcom/vkontakte/android/QuickSearchActivity;Z)V

    .line 319
    iget-object v9, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v9}, Lcom/vkontakte/android/QuickSearchActivity;->access$14(Lcom/vkontakte/android/QuickSearchActivity;)V

    .line 320
    return-void

    .line 286
    .end local v0    # "extSearchProfile":Lcom/vkontakte/android/UserProfile;
    .restart local v3    # "matcher":Ljava/util/regex/Matcher;
    .restart local v7    # "ptn":Ljava/util/regex/Pattern;
    :cond_2
    :try_start_1
    const-string v9, "^@([a-zA-Z0-9_\\.-]+)$"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 287
    iget-object v9, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->val$q:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 288
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 289
    iget-object v9, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/vkontakte/android/QuickSearchActivity;->access$19(Lcom/vkontakte/android/QuickSearchActivity;Ljava/lang/String;)V

    .line 291
    new-instance v4, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v4}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 292
    .restart local v4    # "p":Lcom/vkontakte/android/UserProfile;
    iget-object v9, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    const v10, 0x7f08003e

    invoke-virtual {v9, v10}, Lcom/vkontakte/android/QuickSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 293
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "vk.com/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v10}, Lcom/vkontakte/android/QuickSearchActivity;->access$10(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    .line 294
    iget-object v9, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v9}, Lcom/vkontakte/android/QuickSearchActivity;->access$1(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 295
    move-object v2, v4

    goto/16 :goto_0

    .line 299
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    .end local v4    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v7    # "ptn":Ljava/util/regex/Pattern;
    :catch_0
    move-exception v8

    .local v8, "x":Ljava/lang/Exception;
    const-string v9, "vk"

    invoke-static {v9, v8}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 305
    .end local v8    # "x":Ljava/lang/Exception;
    .restart local v0    # "extSearchProfile":Lcom/vkontakte/android/UserProfile;
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/UserProfile;

    .line 306
    .local v5, "pG":Lcom/vkontakte/android/UserProfile;
    const/4 v1, 0x0

    .line 307
    .local v1, "found":Z
    iget-object v10, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v10}, Lcom/vkontakte/android/QuickSearchActivity;->access$0(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_5

    .line 313
    :goto_2
    if-nez v1, :cond_1

    .line 314
    iget-object v10, p0, Lcom/vkontakte/android/QuickSearchActivity$8;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v10}, Lcom/vkontakte/android/QuickSearchActivity;->access$1(Lcom/vkontakte/android/QuickSearchActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 307
    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/UserProfile;

    .line 308
    .local v6, "pL":Lcom/vkontakte/android/UserProfile;
    iget v11, v5, Lcom/vkontakte/android/UserProfile;->uid:I

    iget v12, v6, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v11, v12, :cond_4

    .line 309
    const/4 v1, 0x1

    .line 310
    goto :goto_2
.end method
