.class Lcom/vkontakte/android/WallView$14;
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
    iput-object p1, p0, Lcom/vkontakte/android/WallView$14;->this$0:Lcom/vkontakte/android/WallView;

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 472
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 473
    .local v2, "t":Ljava/lang/String;
    const-string v3, "status"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 474
    iget-object v3, p0, Lcom/vkontakte/android/WallView$14;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v3}, Lcom/vkontakte/android/WallView;->access$11(Lcom/vkontakte/android/WallView;)Lcom/vkontakte/android/AudioFile;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 475
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/vkontakte/android/WallView$14;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v3}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 476
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "action"

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 477
    const-string v3, "act_uid"

    iget-object v4, p0, Lcom/vkontakte/android/WallView$14;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v4}, Lcom/vkontakte/android/WallView;->access$1(Lcom/vkontakte/android/WallView;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 479
    const-string v3, "list"

    new-array v4, v5, [Lcom/vkontakte/android/AudioFile;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/vkontakte/android/WallView$14;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v6}, Lcom/vkontakte/android/WallView;->access$11(Lcom/vkontakte/android/WallView;)Lcom/vkontakte/android/AudioFile;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 480
    iget-object v3, p0, Lcom/vkontakte/android/WallView$14;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v3}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 481
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/vkontakte/android/WallView$14;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v3}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 482
    .local v1, "intent2":Landroid/content/Intent;
    const-string v3, "file"

    iget-object v4, p0, Lcom/vkontakte/android/WallView$14;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v4}, Lcom/vkontakte/android/WallView;->access$11(Lcom/vkontakte/android/WallView;)Lcom/vkontakte/android/AudioFile;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 483
    iget-object v3, p0, Lcom/vkontakte/android/WallView$14;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v3}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 491
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intent2":Landroid/content/Intent;
    :cond_0
    :goto_0
    const-string v3, "relation"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 492
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/vkontakte/android/WallView$14;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v3}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/vkontakte/android/WallActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 493
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "wall_id"

    iget-object v4, p0, Lcom/vkontakte/android/WallView$14;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v4}, Lcom/vkontakte/android/WallView;->access$13(Lcom/vkontakte/android/WallView;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 494
    iget-object v3, p0, Lcom/vkontakte/android/WallView$14;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v3}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 495
    invoke-static {p1}, Lcom/vkontakte/android/Global;->setViewSel(Landroid/view/View;)V

    .line 497
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v3, "site"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 498
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, "vklink://view/?"

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vkontakte/android/WallView$14;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v3}, Lcom/vkontakte/android/WallView;->access$10(Lcom/vkontakte/android/WallView;)Ljava/util/HashMap;

    move-result-object v3

    const-string v6, "site"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 499
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/vkontakte/android/WallView$14;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v3}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 500
    invoke-static {p1}, Lcom/vkontakte/android/Global;->setViewSel(Landroid/view/View;)V

    .line 502
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v3, "place"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 504
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, "geo:"

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vkontakte/android/WallView$14;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v3}, Lcom/vkontakte/android/WallView;->access$10(Lcom/vkontakte/android/WallView;)Ljava/util/HashMap;

    move-result-object v3

    const-string v6, "place_coord"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "?z=18&q="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/vkontakte/android/WallView$14;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v3}, Lcom/vkontakte/android/WallView;->access$10(Lcom/vkontakte/android/WallView;)Ljava/util/HashMap;

    move-result-object v3

    const-string v6, "place_coord"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/vkontakte/android/WallView$14;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v3}, Lcom/vkontakte/android/WallView;->access$10(Lcom/vkontakte/android/WallView;)Ljava/util/HashMap;

    move-result-object v3

    const-string v6, "place"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v3, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 506
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/vkontakte/android/WallView$14;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v3}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 510
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "tel:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 511
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/vkontakte/android/WallView$14;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v3}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 513
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    return-void

    .line 485
    :cond_5
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/vkontakte/android/WallView$14;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v3}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/vkontakte/android/StatusActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 486
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "status"

    iget-object v4, p0, Lcom/vkontakte/android/WallView$14;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v4}, Lcom/vkontakte/android/WallView;->access$12(Lcom/vkontakte/android/WallView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    const-string v3, "can_edit"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 488
    iget-object v3, p0, Lcom/vkontakte/android/WallView$14;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v3}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const/16 v4, 0xc8

    invoke-virtual {v3, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 507
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    goto :goto_1
.end method
