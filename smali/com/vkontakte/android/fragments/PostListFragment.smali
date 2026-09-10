.class public abstract Lcom/vkontakte/android/fragments/PostListFragment;
.super Lcom/vkontakte/android/fragments/PreloadingListFragment;
.source "PostListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/PostListFragment$NewsPhotosAdapter;,
        Lcom/vkontakte/android/fragments/PostListFragment$NewsAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/fragments/PreloadingListFragment",
        "<",
        "Lcom/vkontakte/android/NewsEntry;",
        ">;"
    }
.end annotation


# instance fields
.field protected adapter:Lcom/vkontakte/android/fragments/PostListFragment$NewsAdapter;

.field private highlight:Lcom/vkontakte/android/ui/posts/PostHighlightDrawable;

.field protected items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/ui/posts/PostDisplayItem;",
            ">;"
        }
    .end annotation
.end field

.field private menuClickListener:Landroid/view/View$OnClickListener;

.field protected offset:I

.field private receiver:Landroid/content/BroadcastReceiver;

.field private runningAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 126
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/vkontakte/android/fragments/PreloadingListFragment;-><init>(I)V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Lcom/vkontakte/android/fragments/PostListFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/PostListFragment$1;-><init>(Lcom/vkontakte/android/fragments/PostListFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment;->menuClickListener:Landroid/view/View$OnClickListener;

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/fragments/PostListFragment;->offset:I

    .line 76
    new-instance v0, Lcom/vkontakte/android/fragments/PostListFragment$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/PostListFragment$2;-><init>(Lcom/vkontakte/android/fragments/PostListFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment;->runningAnims:Ljava/util/ArrayList;

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/fragments/PostListFragment;Landroid/view/View;Lcom/vkontakte/android/NewsEntry;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostListFragment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/fragments/PostListFragment;->showItemOptions(Landroid/view/View;Lcom/vkontakte/android/NewsEntry;)V

    return-void
.end method

.method static synthetic access$100(Lcom/vkontakte/android/fragments/PostListFragment;)Lcom/vkontakte/android/ui/posts/PostHighlightDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostListFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment;->highlight:Lcom/vkontakte/android/ui/posts/PostHighlightDrawable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkontakte/android/fragments/PostListFragment;Ljava/lang/String;Lcom/vkontakte/android/NewsEntry;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostListFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/fragments/PostListFragment;->performPostAction(Ljava/lang/String;Lcom/vkontakte/android/NewsEntry;)V

    return-void
.end method

.method static synthetic access$301(Lcom/vkontakte/android/fragments/PostListFragment;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostListFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lcom/vkontakte/android/fragments/PreloadingListFragment;->onDataLoaded(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/vkontakte/android/fragments/PostListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostListFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment;->runningAnims:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkontakte/android/fragments/PostListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/PostListFragment;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->animateItemsIn()V

    return-void
.end method

.method private animateItemsIn()V
    .locals 2

    .prologue
    .line 646
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment;->list:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 709
    :goto_0
    return-void

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/PostListFragment$11;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PostListFragment$11;-><init>(Lcom/vkontakte/android/fragments/PostListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method private hideSource(Lcom/vkontakte/android/NewsEntry;)V
    .locals 2
    .param p1, "de"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    .line 520
    new-instance v0, Lcom/vkontakte/android/api/NewsfeedAddBan;

    iget v1, p1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/NewsfeedAddBan;-><init>(I)V

    new-instance v1, Lcom/vkontakte/android/fragments/PostListFragment$9;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/PostListFragment$9;-><init>(Lcom/vkontakte/android/fragments/PostListFragment;Lcom/vkontakte/android/NewsEntry;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/NewsfeedAddBan;->setCallback(Lcom/vkontakte/android/api/NewsfeedAddBan$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 551
    return-void
.end method

.method private performPostAction(Ljava/lang/String;Lcom/vkontakte/android/NewsEntry;)V
    .locals 12
    .param p1, "act"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 435
    const-string v4, "hide"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 436
    invoke-direct {p0, p2}, Lcom/vkontakte/android/fragments/PostListFragment;->hideSource(Lcom/vkontakte/android/NewsEntry;)V

    .line 438
    :cond_0
    const-string v4, "link"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 439
    const-string v2, "http://vk.com/"

    .line 440
    .local v2, "ln":Ljava/lang/String;
    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->type:I

    if-nez v4, :cond_7

    .line 441
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "wall"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 449
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p2, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 450
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "clipboard"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 451
    .local v0, "cm":Landroid/text/ClipboardManager;
    invoke-virtual {v0, v2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 452
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0d0153

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 454
    .end local v0    # "cm":Landroid/text/ClipboardManager;
    .end local v2    # "ln":Ljava/lang/String;
    :cond_2
    const-string v4, "orig"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 455
    const-string v3, "wall"

    .line 456
    .local v3, "type":Ljava/lang/String;
    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->retweetType:I

    if-ne v4, v9, :cond_3

    .line 457
    const-string v3, "photo"

    .line 458
    :cond_3
    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->retweetType:I

    if-ne v4, v10, :cond_4

    .line 459
    const-string v3, "video"

    .line 460
    :cond_4
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "vkontakte://vk.com/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p2, Lcom/vkontakte/android/NewsEntry;->retweetUID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p2, Lcom/vkontakte/android/NewsEntry;->retweetOrigId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 462
    .end local v3    # "type":Ljava/lang/String;
    :cond_5
    const-string v4, "edit"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 463
    const/16 v4, 0x20

    invoke-virtual {p2, v4}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 464
    iget-object v4, p2, Lcom/vkontakte/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {p2, v4, v5}, Lcom/vkontakte/android/data/Posts;->editRepostComment(Lcom/vkontakte/android/NewsEntry;Ljava/lang/String;Landroid/app/Activity;)V

    .line 517
    :cond_6
    :goto_1
    return-void

    .line 442
    .restart local v2    # "ln":Ljava/lang/String;
    :cond_7
    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->type:I

    if-ne v4, v10, :cond_8

    .line 443
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 444
    :cond_8
    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->type:I

    if-ne v4, v9, :cond_9

    .line 445
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "photo"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 446
    :cond_9
    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 447
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "topic"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 467
    .end local v2    # "ln":Ljava/lang/String;
    :cond_a
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/vkontakte/android/NewPostActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 468
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "edit"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 469
    const/16 v4, 0x800

    invoke-virtual {p2, v4}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 470
    const-string v4, "public"

    invoke-virtual {v1, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 471
    :cond_b
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 473
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_c
    const-string v4, "del"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 474
    new-instance v4, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0d0086

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d00a2

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d037e

    new-instance v6, Lcom/vkontakte/android/fragments/PostListFragment$7;

    invoke-direct {v6, p0, p2}, Lcom/vkontakte/android/fragments/PostListFragment$7;-><init>(Lcom/vkontakte/android/fragments/PostListFragment;Lcom/vkontakte/android/NewsEntry;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d018d

    invoke-virtual {v4, v5, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 486
    :cond_d
    const-string v4, "report"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 487
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/vkontakte/android/ReportContentActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 488
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "itemID"

    iget v5, p2, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 489
    const-string v4, "ownerID"

    iget v5, p2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 490
    const-string v3, "post"

    .line 491
    .restart local v3    # "type":Ljava/lang/String;
    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->type:I

    if-ne v4, v9, :cond_e

    .line 492
    const-string v3, "photo"

    .line 493
    :cond_e
    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->type:I

    if-ne v4, v10, :cond_f

    .line 494
    const-string v3, "video"

    .line 495
    :cond_f
    const-string v4, "type"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 498
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "type":Ljava/lang/String;
    :cond_10
    const-string v4, "publish"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 499
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {p2, v4, v11}, Lcom/vkontakte/android/data/Posts;->publishPostponed(Lcom/vkontakte/android/NewsEntry;Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 501
    :cond_11
    const-string v4, "unsubscribe"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 502
    new-instance v4, Lcom/vkontakte/android/api/NewsfeedUnsubscribe;

    iget v5, p2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget v6, p2, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v7, p2, Lcom/vkontakte/android/NewsEntry;->type:I

    invoke-direct {v4, v5, v6, v7}, Lcom/vkontakte/android/api/NewsfeedUnsubscribe;-><init>(III)V

    new-instance v5, Lcom/vkontakte/android/fragments/PostListFragment$8;

    invoke-direct {v5, p0, p2}, Lcom/vkontakte/android/fragments/PostListFragment$8;-><init>(Lcom/vkontakte/android/fragments/PostListFragment;Lcom/vkontakte/android/NewsEntry;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/api/NewsfeedUnsubscribe;->setCallback(Lcom/vkontakte/android/api/NewsfeedUnsubscribe$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_1
.end method

.method private showItemOptions(Landroid/view/View;Lcom/vkontakte/android/NewsEntry;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "e"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    const/16 v12, 0x1000

    const/16 v11, 0x800

    const/4 v10, 0x0

    .line 386
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v0, "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->canHideFromFeed()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-eq v4, v5, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0138

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    const-string v4, "hide"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    :cond_0
    const/16 v4, 0x20

    invoke-virtual {p2, v4}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->retweetOrigTime:I

    if-lez v4, :cond_1

    .line 393
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d02de

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    const-string v4, "orig"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    :cond_1
    const/16 v4, 0x80

    invoke-virtual {p2, v4}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->time:I

    const v5, 0x15180

    add-int/2addr v4, v5

    int-to-long v4, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    invoke-virtual {p2, v12}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 397
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d00b6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    const-string v4, "edit"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    :cond_3
    invoke-virtual {p2, v11}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 401
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d024a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    const-string v4, "publish"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    :cond_4
    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_6

    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_6

    .line 405
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d008d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    const-string v4, "link"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    const/16 v4, 0x40

    invoke-virtual {p2, v4}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v4

    if-nez v4, :cond_5

    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-eq v4, v5, :cond_5

    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->userID:I

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-ne v4, v5, :cond_6

    .line 408
    :cond_5
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d009d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    const-string v4, "del"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_6
    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->userID:I

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-eq v4, v5, :cond_8

    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->type:I

    if-eqz v4, :cond_7

    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_7

    iget v4, p2, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    :cond_7
    invoke-virtual {p2, v12}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {p2, v11}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v4

    if-nez v4, :cond_8

    .line 413
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0262

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    const-string v4, "report"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    :cond_8
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->canUnsubscribe()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 417
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0084

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    const-string v4, "unsubscribe"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_9
    new-instance v3, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 421
    .local v3, "pm":Landroid/widget/PopupMenu;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_a

    .line 422
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v5, v10, v1, v10, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 421
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 424
    :cond_a
    new-instance v4, Lcom/vkontakte/android/fragments/PostListFragment$6;

    invoke-direct {v4, p0, v0, p2}, Lcom/vkontakte/android/fragments/PostListFragment$6;-><init>(Lcom/vkontakte/android/fragments/PostListFragment;Ljava/util/ArrayList;Lcom/vkontakte/android/NewsEntry;)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 431
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->show()V

    .line 432
    return-void
.end method


# virtual methods
.method protected appendItems(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/NewsEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 584
    .local p1, "posts":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/NewsEntry;>;"
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "append "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " items"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 586
    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    iget-object v8, p0, Lcom/vkontakte/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->isPhotosMode()Z

    move-result v1

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->getReferer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->isFeedbackStyle()Z

    move-result v3

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->canHideFromFeed()Z

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostListFragment;->menuClickListener:Landroid/view/View$OnClickListener;

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/vkontakte/android/data/Posts;->buildItems(Lcom/vkontakte/android/NewsEntry;ZLjava/lang/String;ZZLandroid/view/View$OnClickListener;Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 588
    .end local v0    # "e":Lcom/vkontakte/android/NewsEntry;
    :cond_0
    return-void
.end method

.method protected canAddPost(Lcom/vkontakte/android/NewsEntry;)Z
    .locals 1
    .param p1, "post"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method protected canHideFromFeed()Z
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method protected canUnsubscribe()Z
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method protected clearItems()V
    .locals 2

    .prologue
    .line 603
    const-string v0, "vk"

    const-string v1, "clear items"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 605
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->updateList()V

    .line 606
    return-void
.end method

.method protected createListView()Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 185
    new-instance v0, Lcom/vkontakte/android/fragments/PostListFragment$4;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/fragments/PostListFragment$4;-><init>(Lcom/vkontakte/android/fragments/PostListFragment;Landroid/content/Context;)V

    return-object v0
.end method

.method protected getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment;->adapter:Lcom/vkontakte/android/fragments/PostListFragment$NewsAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/vkontakte/android/fragments/PostListFragment$NewsAdapter;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/PostListFragment$NewsAdapter;-><init>(Lcom/vkontakte/android/fragments/PostListFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment;->adapter:Lcom/vkontakte/android/fragments/PostListFragment$NewsAdapter;

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment;->adapter:Lcom/vkontakte/android/fragments/PostListFragment$NewsAdapter;

    return-object v0
.end method

.method protected getEmptyText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 610
    const v0, 0x7f0d01ac

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/PostListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getImageLoaderAdapter()Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
    .locals 2

    .prologue
    .line 212
    new-instance v0, Lcom/vkontakte/android/fragments/PostListFragment$NewsPhotosAdapter;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->getPostsOffset()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/fragments/PostListFragment$NewsPhotosAdapter;-><init>(Lcom/vkontakte/android/fragments/PostListFragment;I)V

    return-object v0
.end method

.method protected getPostsOffset()I
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getReferer()Ljava/lang/String;
.end method

.method protected isFeedbackStyle()Z
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method protected isPhotosMode()Z
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 6
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/PreloadingListFragment;->onAttach(Landroid/app/Activity;)V

    .line 152
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "no_autoload"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->loadData()V

    .line 155
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "action_bar_container"

    const-string v4, "id"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 156
    .local v0, "abId":I
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 157
    .local v1, "actionBarView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 158
    new-instance v2, Lcom/vkontakte/android/fragments/PostListFragment$3;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/PostListFragment$3;-><init>(Lcom/vkontakte/android/fragments/PostListFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/PreloadingListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 133
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkontakte.android.NEW_POST_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string v1, "com.vkontakte.android.POST_DELETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string v1, "com.vkontakte.android.POST_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string v1, "com.vkontakte.android.POST_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v1, "com.vkontakte.android.RELOAD_FEED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostListFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.vkontakte.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 139
    return-void
.end method

.method protected onDataLoaded(Ljava/util/List;Z)V
    .locals 9
    .param p2, "more"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/NewsEntry;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 615
    .local p1, "d":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/NewsEntry;>;"
    iget-boolean v7, p0, Lcom/vkontakte/android/fragments/PostListFragment;->refreshing:Z

    if-eqz v7, :cond_3

    .line 616
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 617
    .local v1, "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v7, p0, Lcom/vkontakte/android/fragments/PostListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 618
    iget-object v7, p0, Lcom/vkontakte/android/fragments/PostListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v7, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 619
    .local v2, "c":Landroid/view/View;
    const v7, 0x7f08001f

    invoke-virtual {v2, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 620
    .local v4, "id":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 617
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 621
    :cond_0
    const-string v7, "alpha"

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-static {v2, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 622
    .local v6, "oa":Landroid/animation/ObjectAnimator;
    new-instance v7, Lcom/vkontakte/android/ui/HardwareLayerAnimatorListener;

    invoke-direct {v7}, Lcom/vkontakte/android/ui/HardwareLayerAnimatorListener;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 623
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 625
    .end local v2    # "c":Landroid/view/View;
    .end local v4    # "id":Ljava/lang/String;
    .end local v6    # "oa":Landroid/animation/ObjectAnimator;
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 626
    .local v0, "anim":Landroid/animation/AnimatorSet;
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 627
    const-wide/16 v7, 0xc8

    invoke-virtual {v0, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 628
    iget-object v7, p0, Lcom/vkontakte/android/fragments/PostListFragment;->runningAnims:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    new-instance v7, Lcom/vkontakte/android/fragments/PostListFragment$10;

    invoke-direct {v7, p0, p1, p2}, Lcom/vkontakte/android/fragments/PostListFragment$10;-><init>(Lcom/vkontakte/android/fragments/PostListFragment;Ljava/util/List;Z)V

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 636
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 643
    .end local v0    # "anim":Landroid/animation/AnimatorSet;
    .end local v1    # "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v3    # "i":I
    :cond_2
    :goto_2
    return-void

    .line 638
    :cond_3
    iget-object v7, p0, Lcom/vkontakte/android/fragments/PostListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_4

    const/4 v5, 0x1

    .line 639
    .local v5, "needAnim":Z
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/vkontakte/android/fragments/PreloadingListFragment;->onDataLoaded(Ljava/util/List;Z)V

    .line 640
    if-eqz v5, :cond_2

    .line 641
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->animateItemsIn()V

    goto :goto_2

    .line 638
    .end local v5    # "needAnim":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    .line 621
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Lcom/vkontakte/android/fragments/PreloadingListFragment;->onDestroy()V

    .line 145
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostListFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDetach()V
    .locals 6

    .prologue
    .line 169
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "action_bar_container"

    const-string v4, "id"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 170
    .local v0, "abId":I
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 171
    .local v1, "actionBarView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 172
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    :cond_0
    invoke-super {p0}, Lcom/vkontakte/android/fragments/PreloadingListFragment;->onDetach()V

    .line 175
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 556
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :try_start_0
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/PostListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v6

    sub-int v6, p3, v6

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->getPostsOffset()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/ui/posts/PostDisplayItem;

    .line 557
    .local v3, "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    const/4 v1, 0x0

    .line 558
    .local v1, "e":Lcom/vkontakte/android/NewsEntry;
    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/NewsEntry;

    .line 559
    .local v4, "post":Lcom/vkontakte/android/NewsEntry;
    iget v5, v4, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget v6, v3, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->postOwnerID:I

    if-ne v5, v6, :cond_0

    iget v5, v4, Lcom/vkontakte/android/NewsEntry;->postID:I

    iget v6, v3, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->postID:I

    if-ne v5, v6, :cond_0

    .line 560
    move-object v1, v4

    .line 564
    .end local v4    # "post":Lcom/vkontakte/android/NewsEntry;
    :cond_1
    if-nez v1, :cond_3

    .line 579
    .end local v1    # "e":Lcom/vkontakte/android/NewsEntry;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    :cond_2
    :goto_0
    return-void

    .line 565
    .restart local v1    # "e":Lcom/vkontakte/android/NewsEntry;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    :cond_3
    iget v5, v1, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_2

    iget v5, v1, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v6, 0x7

    if-eq v5, v6, :cond_2

    .line 566
    iget v5, v1, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    .line 567
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 568
    .local v0, "args":Landroid/os/Bundle;
    const-string v5, "title"

    iget-object v6, v1, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 569
    const-string v5, "gid"

    iget v6, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    neg-int v6, v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 570
    const-string v5, "tid"

    iget v6, v1, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 571
    const-string v5, "offset"

    iget v6, v1, Lcom/vkontakte/android/NewsEntry;->numComments:I

    iget v7, v1, Lcom/vkontakte/android/NewsEntry;->numComments:I

    rem-int/lit8 v7, v7, 0x14

    sub-int/2addr v6, v7

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 572
    const-string v5, "BoardTopicViewFragment"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v5, v0, v6}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto :goto_0

    .line 578
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "e":Lcom/vkontakte/android/NewsEntry;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 574
    .restart local v1    # "e":Lcom/vkontakte/android/NewsEntry;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 575
    .restart local v0    # "args":Landroid/os/Bundle;
    const-string v5, "entry"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 576
    const-string v5, "PostViewFragment"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v5, v0, v6}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method protected onPostDeleted(Lcom/vkontakte/android/NewsEntry;)V
    .locals 0
    .param p1, "post"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    .line 278
    return-void
.end method

.method public onScrollStarted()V
    .locals 3

    .prologue
    .line 713
    invoke-super {p0}, Lcom/vkontakte/android/fragments/PreloadingListFragment;->onScrollStarted()V

    .line 714
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostListFragment;->runningAnims:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 715
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostListFragment;->runningAnims:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 716
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    .line 718
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostListFragment;->runningAnims:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 720
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public prepend(Lcom/vkontakte/android/NewsEntry;)V
    .locals 12
    .param p1, "e"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    const/4 v2, 0x0

    .line 309
    const/4 v10, 0x0

    .local v10, "itemPos":I
    const/4 v7, 0x0

    .line 310
    .local v7, "entryPos":I
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewsEntry;->flag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    add-int/lit8 v7, v7, 0x1

    .line 312
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/ui/posts/PostDisplayItem;

    .line 313
    .local v9, "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    iget v1, v9, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->postID:I

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    if-eq v1, v0, :cond_1

    .line 318
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v7, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 319
    iget v0, p0, Lcom/vkontakte/android/fragments/PostListFragment;->offset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vkontakte/android/fragments/PostListFragment;->offset:I

    .line 320
    iget-object v11, p0, Lcom/vkontakte/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->isPhotosMode()Z

    move-result v1

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->getReferer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->isFeedbackStyle()Z

    move-result v3

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->canHideFromFeed()Z

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostListFragment;->menuClickListener:Landroid/view/View$OnClickListener;

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/vkontakte/android/data/Posts;->buildItems(Lcom/vkontakte/android/NewsEntry;ZLjava/lang/String;ZZLandroid/view/View$OnClickListener;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v11, v10, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 322
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->updateList()V

    .line 323
    return-void

    .line 315
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v9    # "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method

.method protected prependItems(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/NewsEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 593
    .local p1, "posts":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/NewsEntry;>;"
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepend "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " items"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 595
    .local v8, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ui/posts/PostDisplayItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 596
    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->isPhotosMode()Z

    move-result v1

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->getReferer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->isFeedbackStyle()Z

    move-result v3

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->canHideFromFeed()Z

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostListFragment;->menuClickListener:Landroid/view/View$OnClickListener;

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/vkontakte/android/data/Posts;->buildItems(Lcom/vkontakte/android/NewsEntry;ZLjava/lang/String;ZZLandroid/view/View$OnClickListener;Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 598
    .end local v0    # "e":Lcom/vkontakte/android/NewsEntry;
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v8}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 599
    return-void
.end method

.method public remove(II)V
    .locals 6
    .param p1, "oid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 326
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 327
    .local v3, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/ui/posts/PostDisplayItem;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 328
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ui/posts/PostDisplayItem;

    .line 329
    .local v2, "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    iget v4, v2, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->postID:I

    if-ne v4, p2, :cond_0

    iget v4, v2, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->postOwnerID:I

    if-ne v4, p1, :cond_0

    .line 330
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 332
    .end local v2    # "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 333
    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    if-eqz p1, :cond_3

    iget v4, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-ne v4, p1, :cond_2

    :cond_3
    iget v4, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    if-ne v4, p2, :cond_2

    .line 334
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 335
    iget v4, p0, Lcom/vkontakte/android/fragments/PostListFragment;->offset:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/vkontakte/android/fragments/PostListFragment;->offset:I

    .line 339
    .end local v0    # "e":Lcom/vkontakte/android/NewsEntry;
    :cond_4
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->updateList()V

    .line 342
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/vkontakte/android/fragments/PostListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v5

    if-lt v4, v5, :cond_5

    .line 343
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostListFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->callScrolledToLastItem()V

    .line 344
    :cond_5
    return-void
.end method

.method public replace(Lcom/vkontakte/android/NewsEntry;)V
    .locals 16
    .param p1, "ne"    # Lcom/vkontakte/android/NewsEntry;

    .prologue
    .line 362
    const/4 v9, 0x0

    .line 363
    .local v9, "i":I
    const/4 v11, -0x1

    .line 364
    .local v11, "insertAt":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 365
    .local v13, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/ui/posts/PostDisplayItem;>;"
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 366
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vkontakte/android/ui/posts/PostDisplayItem;

    .line 367
    .local v12, "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    iget v1, v12, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->postID:I

    move-object/from16 v0, p1

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    if-ne v1, v2, :cond_1

    iget v1, v12, Lcom/vkontakte/android/ui/posts/PostDisplayItem;->postOwnerID:I

    move-object/from16 v0, p1

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-ne v1, v2, :cond_1

    .line 368
    const/4 v1, -0x1

    if-ne v11, v1, :cond_0

    move v11, v9

    .line 369
    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->remove()V

    .line 371
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 372
    goto :goto_0

    .line 373
    .end local v12    # "item":Lcom/vkontakte/android/ui/posts/PostDisplayItem;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostListFragment;->isPhotosMode()Z

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostListFragment;->getReferer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostListFragment;->isFeedbackStyle()Z

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostListFragment;->canHideFromFeed()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/fragments/PostListFragment;->menuClickListener:Landroid/view/View$OnClickListener;

    const/4 v7, 0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lcom/vkontakte/android/data/Posts;->buildItems(Lcom/vkontakte/android/NewsEntry;ZLjava/lang/String;ZZLandroid/view/View$OnClickListener;Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v14, v15, v1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 374
    const/4 v9, 0x0

    .line 375
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PostListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/NewsEntry;

    .line 376
    .local v8, "e":Lcom/vkontakte/android/NewsEntry;
    move-object/from16 v0, p1

    iget v1, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-eqz v1, :cond_3

    iget v1, v8, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    move-object/from16 v0, p1

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-ne v1, v2, :cond_5

    :cond_3
    iget v1, v8, Lcom/vkontakte/android/NewsEntry;->postID:I

    move-object/from16 v0, p1

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    if-ne v1, v2, :cond_5

    .line 377
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/PostListFragment;->data:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v1, v9, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 382
    .end local v8    # "e":Lcom/vkontakte/android/NewsEntry;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/PostListFragment;->updateList()V

    .line 383
    return-void

    .line 380
    .restart local v8    # "e":Lcom/vkontakte/android/NewsEntry;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method protected setListViewAppearance(Landroid/widget/ListView;)V
    .locals 6
    .param p1, "l"    # Landroid/widget/ListView;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 217
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PostListFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 218
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 220
    invoke-virtual {p1, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 221
    invoke-virtual {p1, v4}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 222
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 223
    .local v0, "selector":Landroid/graphics/drawable/StateListDrawable;
    new-array v1, v5, [I

    const v2, 0x10100a7

    aput v2, v1, v4

    new-instance v2, Lcom/vkontakte/android/ui/posts/PostHighlightDrawable;

    invoke-direct {v2}, Lcom/vkontakte/android/ui/posts/PostHighlightDrawable;-><init>()V

    iput-object v2, p0, Lcom/vkontakte/android/fragments/PostListFragment;->highlight:Lcom/vkontakte/android/ui/posts/PostHighlightDrawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 224
    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 225
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 226
    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setExitFadeDuration(I)V

    .line 228
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 229
    invoke-virtual {p1, v5}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 230
    new-instance v1, Lcom/vkontakte/android/fragments/PostListFragment$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/PostListFragment$5;-><init>(Lcom/vkontakte/android/fragments/PostListFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 264
    return-void
.end method

.method public update(IIIIIZZ)V
    .locals 4
    .param p1, "oid"    # I
    .param p2, "pid"    # I
    .param p3, "likes"    # I
    .param p4, "comments"    # I
    .param p5, "retweets"    # I
    .param p6, "liked"    # Z
    .param p7, "retweeted"    # Z

    .prologue
    const/4 v3, -0x1

    .line 347
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PostListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsEntry;

    .line 348
    .local v0, "e":Lcom/vkontakte/android/NewsEntry;
    if-eqz p1, :cond_1

    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-ne v2, p1, :cond_0

    :cond_1
    iget v2, v0, Lcom/vkontakte/android/NewsEntry;->postID:I

    if-ne v2, p2, :cond_0

    .line 349
    iput p3, v0, Lcom/vkontakte/android/NewsEntry;->numLikes:I

    .line 350
    if-eq p4, v3, :cond_2

    iput p4, v0, Lcom/vkontakte/android/NewsEntry;->numComments:I

    .line 351
    :cond_2
    if-eq p5, v3, :cond_3

    iput p5, v0, Lcom/vkontakte/android/NewsEntry;->numRetweets:I

    .line 353
    :cond_3
    const/16 v2, 0x8

    invoke-virtual {v0, v2, p6}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 354
    if-eq p5, v3, :cond_4

    const/4 v2, 0x4

    invoke-virtual {v0, v2, p7}, Lcom/vkontakte/android/NewsEntry;->flag(IZ)V

    .line 355
    :cond_4
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PostListFragment;->updateList()V

    .line 359
    .end local v0    # "e":Lcom/vkontakte/android/NewsEntry;
    :cond_5
    return-void
.end method

.method protected useFrom()Z
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method
