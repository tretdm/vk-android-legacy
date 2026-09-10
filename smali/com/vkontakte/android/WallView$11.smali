.class Lcom/vkontakte/android/WallView$11;
.super Ljava/lang/Object;
.source "WallView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/WallView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/WallView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/WallView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v10, 0x7f09011b

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 308
    .local v0, "idx":I
    invoke-static {p1}, Lcom/vkontakte/android/Global;->setViewSel(Landroid/view/View;)V

    .line 309
    packed-switch v0, :pswitch_data_0

    .line 432
    :goto_0
    :pswitch_0
    return-void

    .line 313
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v2}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/PhotoAlbumListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 314
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "uid"

    iget-object v3, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v3}, Lcom/vkontakte/android/WallView;->access$0(Lcom/vkontakte/android/WallView;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    const-string v3, "title"

    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v2}, Lcom/vkontakte/android/WallView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900be

    new-array v6, v7, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v2}, Lcom/vkontakte/android/WallView;->access$8(Lcom/vkontakte/android/WallView;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-le v2, v7, :cond_1

    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v2}, Lcom/vkontakte/android/WallView;->access$8(Lcom/vkontakte/android/WallView;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v9

    :goto_1
    aput-object v2, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    const-string v2, "username"

    iget-object v3, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v3}, Lcom/vkontakte/android/WallView;->access$8(Lcom/vkontakte/android/WallView;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v8

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    const-string v2, "userphoto"

    iget-object v3, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v3}, Lcom/vkontakte/android/WallView;->access$7(Lcom/vkontakte/android/WallView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    iget-boolean v2, v2, Lcom/vkontakte/android/WallView;->isAdmin:Z

    if-eqz v2, :cond_0

    const-string v2, "is_admin"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 319
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v2}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 315
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v2}, Lcom/vkontakte/android/WallView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 325
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v2}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/AudioListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 326
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "oid"

    iget-object v3, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v3}, Lcom/vkontakte/android/WallView;->access$0(Lcom/vkontakte/android/WallView;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 327
    const-string v3, "username"

    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v2}, Lcom/vkontakte/android/WallView;->access$8(Lcom/vkontakte/android/WallView;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-le v2, v7, :cond_2

    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v2}, Lcom/vkontakte/android/WallView;->access$8(Lcom/vkontakte/android/WallView;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v9

    :goto_2
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v2}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 327
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v2}, Lcom/vkontakte/android/WallView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 331
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v2}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/FriendsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 332
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "uid"

    iget-object v3, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v3}, Lcom/vkontakte/android/WallView;->access$0(Lcom/vkontakte/android/WallView;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 333
    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v2}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 336
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v2}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/GroupsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 337
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "uid"

    iget-object v3, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v3}, Lcom/vkontakte/android/WallView;->access$0(Lcom/vkontakte/android/WallView;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 338
    const-string v2, "name0"

    iget-object v3, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v3}, Lcom/vkontakte/android/WallView;->access$8(Lcom/vkontakte/android/WallView;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v8

    iget-object v4, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v4}, Lcom/vkontakte/android/WallView;->access$8(Lcom/vkontakte/android/WallView;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v8

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    const-string v2, "name1"

    iget-object v3, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v3}, Lcom/vkontakte/android/WallView;->access$8(Lcom/vkontakte/android/WallView;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v9

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v2}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 344
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v2}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/UserListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 345
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "type"

    sget v3, Lcom/vkontakte/android/UserListActivity;->TYPE_GROUP_MEMBERS:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 346
    const-string v2, "gid"

    iget-object v3, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v3}, Lcom/vkontakte/android/WallView;->access$0(Lcom/vkontakte/android/WallView;)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 347
    const-string v2, "title"

    iget-object v3, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v3}, Lcom/vkontakte/android/WallView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090121

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v2}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 353
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_6
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v2}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/BoardTopicsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 354
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "gid"

    iget-object v3, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v3}, Lcom/vkontakte/android/WallView;->access$0(Lcom/vkontakte/android/WallView;)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 355
    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    iget-boolean v2, v2, Lcom/vkontakte/android/WallView;->isAdmin:Z

    if-eqz v2, :cond_3

    const-string v2, "is_admin"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 356
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v2}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 360
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_7
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v2}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/FriendsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 361
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "uid"

    iget-object v3, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v3}, Lcom/vkontakte/android/WallView;->access$0(Lcom/vkontakte/android/WallView;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 362
    const-string v2, "mutual"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 363
    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v2}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 371
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_8
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v2}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/PhotoListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 372
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "uid"

    iget-object v3, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v3}, Lcom/vkontakte/android/WallView;->access$0(Lcom/vkontakte/android/WallView;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 373
    const-string v2, "type"

    invoke-virtual {v1, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 374
    const-string v3, "title"

    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v2}, Lcom/vkontakte/android/WallView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09011a

    new-array v6, v7, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v2}, Lcom/vkontakte/android/WallView;->access$8(Lcom/vkontakte/android/WallView;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-le v2, v7, :cond_4

    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v2}, Lcom/vkontakte/android/WallView;->access$8(Lcom/vkontakte/android/WallView;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v9

    :goto_3
    aput-object v2, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    const-string v2, "username"

    iget-object v3, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v3}, Lcom/vkontakte/android/WallView;->access$8(Lcom/vkontakte/android/WallView;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v8

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const-string v2, "userphoto"

    iget-object v3, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v3}, Lcom/vkontakte/android/WallView;->access$7(Lcom/vkontakte/android/WallView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v2}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 374
    :cond_4
    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v2}, Lcom/vkontakte/android/WallView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 385
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_9
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v2}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/PhotoListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 386
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "uid"

    iget-object v3, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v3}, Lcom/vkontakte/android/WallView;->access$0(Lcom/vkontakte/android/WallView;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 387
    const-string v2, "type"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 388
    const-string v3, "title"

    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v2}, Lcom/vkontakte/android/WallView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900c0

    new-array v6, v7, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v2}, Lcom/vkontakte/android/WallView;->access$8(Lcom/vkontakte/android/WallView;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-le v2, v7, :cond_5

    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v2}, Lcom/vkontakte/android/WallView;->access$8(Lcom/vkontakte/android/WallView;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v7

    :goto_4
    aput-object v2, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    const-string v2, "username"

    iget-object v3, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v3}, Lcom/vkontakte/android/WallView;->access$8(Lcom/vkontakte/android/WallView;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v8

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    const-string v2, "userphoto"

    iget-object v3, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v3}, Lcom/vkontakte/android/WallView;->access$7(Lcom/vkontakte/android/WallView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v2}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 388
    :cond_5
    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v2}, Lcom/vkontakte/android/WallView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 398
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_a
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v2}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/VideoListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 399
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "uid"

    iget-object v3, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v3}, Lcom/vkontakte/android/WallView;->access$0(Lcom/vkontakte/android/WallView;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 400
    const-string v2, "type"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 401
    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v2}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 407
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_b
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v2}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/VideoListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 408
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "uid"

    iget-object v3, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v3}, Lcom/vkontakte/android/WallView;->access$0(Lcom/vkontakte/android/WallView;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 409
    const-string v2, "type"

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 410
    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v2}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 416
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_c
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v2}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/DocumentsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 417
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "oid"

    iget-object v3, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v3}, Lcom/vkontakte/android/WallView;->access$0(Lcom/vkontakte/android/WallView;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 418
    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v2}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 424
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_d
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/WikiViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 425
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "oid"

    iget-object v3, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v3}, Lcom/vkontakte/android/WallView;->access$0(Lcom/vkontakte/android/WallView;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 426
    const-string v3, "title"

    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v2}, Lcom/vkontakte/android/WallView;->access$9(Lcom/vkontakte/android/WallView;)Ljava/util/HashMap;

    move-result-object v2

    const-string v4, "_wiki_page"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    iget-object v2, p0, Lcom/vkontakte/android/WallView$11;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v2}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_1
        :pswitch_2
        :pswitch_b
        :pswitch_a
        :pswitch_3
        :pswitch_7
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
