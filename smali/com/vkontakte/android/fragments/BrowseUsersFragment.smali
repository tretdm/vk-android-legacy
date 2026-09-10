.class public Lcom/vkontakte/android/fragments/BrowseUsersFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "BrowseUsersFragment.java"

# interfaces
.implements Lcom/vkontakte/android/fragments/BackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/BrowseUsersFragment$SearchRunner;,
        Lcom/vkontakte/android/fragments/BrowseUsersFragment$UserPhotosAdapter;,
        Lcom/vkontakte/android/fragments/BrowseUsersFragment$UsersAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/vkontakte/android/fragments/BrowseUsersFragment$UsersAdapter;

.field private ageFrom:I

.field private ageTo:I

.field private city:I

.field private content:Landroid/widget/FrameLayout;

.field private country:I

.field private currentReq:Lcom/vkontakte/android/APIRequest;

.field private dataLoading:Z

.field private delayedSearch:Ljava/lang/Runnable;

.field private empty:Lcom/vkontakte/android/ui/EmptyView;

.field private extParamsView:Landroid/view/View;

.field private handler:Landroid/os/Handler;

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private isEmpty:Z

.field private list:Landroid/widget/ListView;

.field private loadMoreView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

.field private moreAvailable:Z

.field private offset:I

.field private paramsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

.field private preloadOnReady:Z

.field private preloadedResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private preloading:Z

.field private prevHash:I

.field private progress:Landroid/widget/ProgressBar;

.field private query:Ljava/lang/String;

.field private relation:I

.field private searchResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private searchView:Lcom/actionbarsherlock/widget/SearchView;

.field private total:I

.field private wrap:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->searchResults:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->preloadedResults:Ljava/util/ArrayList;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->isEmpty:Z

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->query:Ljava/lang/String;

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->prevHash:I

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->handler:Landroid/os/Handler;

    .line 91
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->delayedSearch:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Z)Z
    .locals 1

    .prologue
    .line 563
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->loadData(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Lcom/vkontakte/android/fragments/BrowseUsersFragment$UsersAdapter;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->adapter:Lcom/vkontakte/android/fragments/BrowseUsersFragment$UsersAdapter;

    return-object v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->query:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->delayedSearch:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$14(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->dataLoading:Z

    return v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)V
    .locals 0

    .prologue
    .line 469
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->searchDelayed()V

    return-void
.end method

.method static synthetic access$17(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)V
    .locals 0

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->toggleExtParams()V

    return-void
.end method

.method static synthetic access$18(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->preloading:Z

    return v0
.end method

.method static synthetic access$19(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->moreAvailable:Z

    return v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->searchResults:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$20(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Z)V
    .locals 0

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->preloading:Z

    return-void
.end method

.method static synthetic access$21(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Z)V
    .locals 0

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->preloadOnReady:Z

    return-void
.end method

.method static synthetic access$22(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->country:I

    return v0
.end method

.method static synthetic access$23(Lcom/vkontakte/android/fragments/BrowseUsersFragment;I)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->country:I

    return-void
.end method

.method static synthetic access$24(Lcom/vkontakte/android/fragments/BrowseUsersFragment;I)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->city:I

    return-void
.end method

.method static synthetic access$25(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->extParamsView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$26(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->ageFrom:I

    return v0
.end method

.method static synthetic access$27(Lcom/vkontakte/android/fragments/BrowseUsersFragment;I)V
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->ageFrom:I

    return-void
.end method

.method static synthetic access$28(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->ageTo:I

    return v0
.end method

.method static synthetic access$29(Lcom/vkontakte/android/fragments/BrowseUsersFragment;I)V
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->ageTo:I

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->preloadedResults:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$30(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->relation:I

    return v0
.end method

.method static synthetic access$31(Lcom/vkontakte/android/fragments/BrowseUsersFragment;I)V
    .locals 0

    .prologue
    .line 83
    iput p1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->relation:I

    return-void
.end method

.method static synthetic access$32(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)V
    .locals 0

    .prologue
    .line 447
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->selectCity()V

    return-void
.end method

.method static synthetic access$33(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->city:I

    return v0
.end method

.method static synthetic access$34(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Z)V
    .locals 0

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->dataLoading:Z

    return-void
.end method

.method static synthetic access$35(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$36(Lcom/vkontakte/android/fragments/BrowseUsersFragment;I)V
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->offset:I

    return-void
.end method

.method static synthetic access$37(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->offset:I

    return v0
.end method

.method static synthetic access$38(Lcom/vkontakte/android/fragments/BrowseUsersFragment;I)V
    .locals 0

    .prologue
    .line 77
    iput p1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->total:I

    return-void
.end method

.method static synthetic access$39(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->preloadOnReady:Z

    return v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->wrap:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$40(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Z)V
    .locals 0

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->moreAvailable:Z

    return-void
.end method

.method static synthetic access$41(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Lcom/vkontakte/android/ui/LoadMoreFooterView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->loadMoreView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)V
    .locals 0

    .prologue
    .line 553
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->updateList()V

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->isEmpty:Z

    return v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->total:I

    return v0
.end method

.method private loadData(Z)Z
    .locals 10
    .param p1, "reload"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 564
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 565
    .local v4, "xparams":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->extParamsView:Landroid/view/View;

    if-eqz v5, :cond_4

    .line 566
    iget-object v5, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->extParamsView:Landroid/view/View;

    const v8, 0x7f090187

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v8

    long-to-int v0, v8

    .line 567
    .local v0, "country":I
    if-lez v0, :cond_0

    .line 568
    const-string v5, "country"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 569
    iget v5, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->city:I

    if-lez v5, :cond_0

    .line 570
    const-string v5, "city"

    iget v8, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->city:I

    invoke-virtual {v4, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 572
    :cond_0
    iget v5, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->ageFrom:I

    if-lez v5, :cond_1

    .line 573
    const-string v5, "age_from"

    iget v8, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->ageFrom:I

    invoke-virtual {v4, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 575
    :cond_1
    iget v5, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->ageTo:I

    if-lez v5, :cond_2

    .line 576
    const-string v5, "age_to"

    iget v8, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->ageTo:I

    invoke-virtual {v4, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 578
    :cond_2
    iget-object v5, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->extParamsView:Landroid/view/View;

    const v8, 0x7f09018b

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 579
    const-string v5, "sex"

    const/4 v8, 0x2

    invoke-virtual {v4, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 583
    :cond_3
    :goto_0
    iget v5, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->relation:I

    if-lez v5, :cond_4

    .line 584
    const-string v5, "status"

    iget v8, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->relation:I

    invoke-virtual {v4, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 588
    .end local v0    # "country":I
    :cond_4
    if-eqz p1, :cond_8

    .line 589
    iget-object v5, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->query:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 590
    .local v1, "hash":I
    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 591
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_6

    .line 595
    iget v5, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->prevHash:I

    if-ne v1, v5, :cond_7

    .line 645
    .end local v1    # "hash":I
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_2
    return v7

    .line 580
    .restart local v0    # "country":I
    :cond_5
    iget-object v5, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->extParamsView:Landroid/view/View;

    const v8, 0x7f09018c

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 581
    const-string v5, "sex"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 591
    .end local v0    # "country":I
    .restart local v1    # "hash":I
    .restart local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 592
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v1, v8

    goto :goto_1

    .line 596
    .end local v2    # "key":Ljava/lang/String;
    :cond_7
    iput v1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->prevHash:I

    .line 598
    .end local v1    # "hash":I
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_8
    iget-object v5, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->query:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v4}, Landroid/os/Bundle;->size()I

    move-result v5

    if-nez v5, :cond_9

    move v5, v6

    :goto_3
    iput-boolean v5, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->isEmpty:Z

    .line 599
    iput-boolean v6, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->dataLoading:Z

    .line 600
    new-instance v8, Lcom/vkontakte/android/api/UsersSearch;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v5}, Lcom/actionbarsherlock/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    if-eqz p1, :cond_a

    :goto_4
    iget-boolean v5, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->preloading:Z

    if-eqz v5, :cond_b

    const/16 v5, 0x32

    :goto_5
    invoke-direct {v8, v9, v4, v7, v5}, Lcom/vkontakte/android/api/UsersSearch;-><init>(Ljava/lang/String;Landroid/os/Bundle;II)V

    .line 601
    new-instance v5, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;

    invoke-direct {v5, p0, p1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment$17;-><init>(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Z)V

    invoke-virtual {v8, v5}, Lcom/vkontakte/android/api/UsersSearch;->setCallback(Lcom/vkontakte/android/api/UsersSearch$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 644
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 600
    iput-object v5, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    move v7, v6

    .line 645
    goto :goto_2

    :cond_9
    move v5, v7

    .line 598
    goto :goto_3

    .line 600
    :cond_a
    iget v7, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->offset:I

    goto :goto_4

    :cond_b
    const/16 v5, 0x64

    goto :goto_5
.end method

.method private searchDelayed()V
    .locals 4

    .prologue
    .line 470
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->delayedSearch:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->delayedSearch:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 474
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->delayedSearch:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 475
    return-void

    .line 473
    :cond_0
    new-instance v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$SearchRunner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment$SearchRunner;-><init>(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Lcom/vkontakte/android/fragments/BrowseUsersFragment$SearchRunner;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->delayedSearch:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method private selectCity()V
    .locals 4

    .prologue
    .line 448
    new-instance v1, Lcom/vkontakte/android/fragments/CitySelectFragment;

    invoke-direct {v1}, Lcom/vkontakte/android/fragments/CitySelectFragment;-><init>()V

    .line 449
    .local v1, "fragment":Lcom/vkontakte/android/fragments/CitySelectFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 450
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "hint"

    const v3, 0x7f08031d

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v2, "country"

    iget v3, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->country:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 452
    const-string v3, "show_none"

    iget v2, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->city:I

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 453
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/fragments/CitySelectFragment;->setArguments(Landroid/os/Bundle;)V

    .line 454
    new-instance v2, Lcom/vkontakte/android/fragments/BrowseUsersFragment$13;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment$13;-><init>(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/fragments/CitySelectFragment;->setCallback(Lcom/vkontakte/android/fragments/DatabaseSearchFragment$Callback;)V

    .line 466
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "city"

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/fragments/CitySelectFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 467
    return-void

    .line 452
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private toggleExtParams()V
    .locals 11

    .prologue
    const-wide/16 v9, 0xc8

    const/4 v5, 0x0

    const/16 v8, 0x10

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 478
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->extParamsView:Landroid/view/View;

    if-nez v3, :cond_1

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->extParamsView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_5

    .line 480
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->extParamsView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 481
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_4

    .line 482
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->extParamsView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 483
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->extParamsView:Landroid/view/View;

    const/high16 v4, -0x3d380000    # -100.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 484
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->extParamsView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 485
    .local v0, "a":Landroid/view/ViewPropertyAnimator;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v8, :cond_2

    .line 486
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 487
    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 488
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->wrap:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const v4, 0x3e19999a    # 0.15f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 489
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v8, :cond_3

    .line 490
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 491
    :cond_3
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 494
    .end local v0    # "a":Landroid/view/ViewPropertyAnimator;
    :cond_4
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201d1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 495
    .local v1, "arrow":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v1, v7, v7, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 496
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->paramsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    invoke-virtual {v3, v6, v6, v1, v6}, Lcom/vkontakte/android/ui/OverlayTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 497
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 498
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 499
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 500
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->clearFocus()V

    goto/16 :goto_0

    .line 503
    .end local v1    # "arrow":Landroid/graphics/drawable/Drawable;
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_8

    .line 504
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->extParamsView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, -0x3d380000    # -100.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 505
    .restart local v0    # "a":Landroid/view/ViewPropertyAnimator;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v8, :cond_6

    .line 506
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 507
    :cond_6
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 508
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->wrap:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 509
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v8, :cond_7

    .line 510
    new-instance v3, Lcom/vkontakte/android/fragments/BrowseUsersFragment$14;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment$14;-><init>(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 515
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 523
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 528
    .end local v0    # "a":Landroid/view/ViewPropertyAnimator;
    :goto_2
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201d0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 529
    .restart local v1    # "arrow":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v1, v7, v7, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 530
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->paramsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    invoke-virtual {v3, v6, v6, v1, v6}, Lcom/vkontakte/android/ui/OverlayTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 531
    new-instance v3, Lcom/vkontakte/android/fragments/BrowseUsersFragment$SearchRunner;

    invoke-direct {v3, p0, v6}, Lcom/vkontakte/android/fragments/BrowseUsersFragment$SearchRunner;-><init>(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Lcom/vkontakte/android/fragments/BrowseUsersFragment$SearchRunner;)V

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/BrowseUsersFragment$SearchRunner;->run()V

    goto/16 :goto_0

    .line 517
    .end local v1    # "arrow":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "a":Landroid/view/ViewPropertyAnimator;
    :cond_7
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->extParamsView:Landroid/view/View;

    new-instance v4, Lcom/vkontakte/android/fragments/BrowseUsersFragment$15;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment$15;-><init>(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)V

    invoke-virtual {v3, v4, v9, v10}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 526
    .end local v0    # "a":Landroid/view/ViewPropertyAnimator;
    :cond_8
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->extParamsView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateList()V
    .locals 2

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/BrowseUsersFragment$16;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment$16;-><init>(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 561
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 7
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 94
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 96
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 97
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 98
    const v3, 0x7f080060

    invoke-virtual {p1, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 100
    new-instance v3, Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/actionbarsherlock/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/actionbarsherlock/widget/SearchView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    .line 101
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    const v4, 0x7f080350

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/actionbarsherlock/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v3, v5}, Lcom/actionbarsherlock/widget/SearchView;->setIconified(Z)V

    .line 104
    :try_start_0
    const-class v3, Lcom/actionbarsherlock/widget/SearchView;

    const-string v4, "mSearchButton"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 105
    .local v1, "searchField":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 106
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 107
    .local v0, "searchBtn":Landroid/widget/ImageView;
    const v3, 0x7f0200fb

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    const-class v3, Lcom/actionbarsherlock/widget/SearchView;

    const-string v4, "mSearchPlate"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 109
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 110
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 111
    .local v2, "searchPlate":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, -0x7f000001

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHintTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v0    # "searchBtn":Landroid/widget/ImageView;
    .end local v1    # "searchField":Ljava/lang/reflect/Field;
    .end local v2    # "searchPlate":Landroid/widget/LinearLayout;
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    new-instance v4, Lcom/vkontakte/android/fragments/BrowseUsersFragment$1;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment$1;-><init>(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)V

    invoke-virtual {v3, v4}, Lcom/actionbarsherlock/widget/SearchView;->setOnQueryTextListener(Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V

    .line 143
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    new-instance v4, Lcom/vkontakte/android/fragments/BrowseUsersFragment$2;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment$2;-><init>(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)V

    invoke-virtual {v3, v4}, Lcom/actionbarsherlock/widget/SearchView;->setOnCloseListener(Lcom/actionbarsherlock/widget/SearchView$OnCloseListener;)V

    .line 149
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    const v4, 0x7ffffff5

    invoke-virtual {v3, v4}, Lcom/actionbarsherlock/widget/SearchView;->setMaxWidth(I)V

    .line 150
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v3}, Lcom/actionbarsherlock/widget/SearchView;->onActionViewExpanded()V

    .line 160
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v3, v4}, Lcom/actionbarsherlock/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 161
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 162
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->setHasOptionsMenu(Z)V

    .line 163
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "q"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "q"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->query:Ljava/lang/String;

    .line 165
    iget-object v3, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->query:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/actionbarsherlock/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 167
    :cond_0
    invoke-direct {p0, v6}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->loadData(Z)Z

    .line 168
    return-void

    .line 112
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 788
    sget-boolean v0, Lcom/vkontakte/android/Global;->isTablet:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->extParamsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 789
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->toggleExtParams()V

    .line 790
    const/4 v0, 0x1

    .line 792
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v9, -0x1

    .line 184
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 185
    sget-boolean v4, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v4, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 187
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->extParamsView:Landroid/view/View;

    const v5, 0x7f090186

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v5, v8, :cond_1

    move v5, v6

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 188
    iget-object v4, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->extParamsView:Landroid/view/View;

    const v5, 0x7f090189

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v5, v8, :cond_2

    :goto_1
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 189
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v4, v5, :cond_3

    const/high16 v4, 0x43480000    # 200.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    .line 190
    .local v1, "size":I
    :goto_2
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, 0x3

    invoke-direct {v2, v9, v9, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 191
    .local v2, "wlp":Landroid/widget/FrameLayout$LayoutParams;
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 192
    iget-object v4, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->wrap:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x35

    invoke-direct {v3, v1, v9, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 194
    .local v3, "xlp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->extParamsView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    iget-object v4, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    div-int/lit8 v5, v1, 0x2

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 198
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v1    # "size":I
    .end local v2    # "wlp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "xlp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void

    .restart local v0    # "dm":Landroid/util/DisplayMetrics;
    :cond_1
    move v5, v7

    .line 187
    goto :goto_0

    :cond_2
    move v6, v7

    .line 188
    goto :goto_1

    .line 189
    :cond_3
    const/high16 v4, 0x43b90000    # 370.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 180
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 181
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 29
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 201
    new-instance v23, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->content:Landroid/widget/FrameLayout;

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->content:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f060019

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getColor(I)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 204
    new-instance v23, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->wrap:Landroid/widget/FrameLayout;

    .line 205
    new-instance v23, Landroid/widget/ListView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->list:Landroid/widget/ListView;

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->wrap:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->list:Landroid/widget/ListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/ui/EmptyView;->create(Landroid/content/Context;)Lcom/vkontakte/android/ui/EmptyView;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->empty:Lcom/vkontakte/android/ui/EmptyView;

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->empty:Lcom/vkontakte/android/ui/EmptyView;

    move-object/from16 v23, v0

    const v24, 0x7f0800bf

    invoke-virtual/range {v23 .. v24}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->empty:Lcom/vkontakte/android/ui/EmptyView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->wrap:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->empty:Lcom/vkontakte/android/ui/EmptyView;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->list:Landroid/widget/ListView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->empty:Lcom/vkontakte/android/ui/EmptyView;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->list:Landroid/widget/ListView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->list:Landroid/widget/ListView;

    move-object/from16 v23, v0

    new-instance v24, Landroid/graphics/drawable/ColorDrawable;

    const/16 v25, 0x0

    invoke-direct/range {v24 .. v25}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->content:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->wrap:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 215
    new-instance v23, Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/vkontakte/android/ui/LoadMoreFooterView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->loadMoreView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->list:Landroid/widget/ListView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->loadMoreView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v23 .. v26}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 217
    new-instance v23, Landroid/widget/ProgressBar;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->progress:Landroid/widget/ProgressBar;

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->progress:Landroid/widget/ProgressBar;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->dataLoading:Z

    move/from16 v23, v0

    if-eqz v23, :cond_0

    const/16 v23, 0x0

    :goto_0
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->wrap:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->dataLoading:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1

    const/16 v23, 0x8

    :goto_1
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->content:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->progress:Landroid/widget/ProgressBar;

    move-object/from16 v24, v0

    new-instance v25, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v26, 0x42200000    # 40.0f

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v26

    const/high16 v27, 0x42200000    # 40.0f

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v27

    const/16 v28, 0x11

    invoke-direct/range {v25 .. v28}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual/range {v23 .. v25}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->list:Landroid/widget/ListView;

    move-object/from16 v23, v0

    new-instance v24, Lcom/vkontakte/android/fragments/BrowseUsersFragment$3;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment$3;-><init>(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 230
    const v23, 0x7f030082

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->extParamsView:Landroid/view/View;

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->extParamsView:Landroid/view/View;

    move-object/from16 v23, v0

    const/16 v24, -0x1

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setBackgroundColor(I)V

    .line 232
    sget-boolean v23, Lcom/vkontakte/android/Global;->isTablet:Z

    if-nez v23, :cond_2

    .line 233
    new-instance v17, Lcom/vkontakte/android/fragments/BrowseUsersFragment$4;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/fragments/BrowseUsersFragment$4;-><init>(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Landroid/content/Context;)V

    .line 242
    .local v17, "ll":Landroid/widget/LinearLayout;
    const/16 v23, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->extParamsView:Landroid/view/View;

    move-object/from16 v23, v0

    const/16 v24, -0x1

    const/16 v25, -0x2

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 244
    new-instance v19, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 245
    .local v19, "shadow":Landroid/widget/ImageView;
    const v23, 0x7f0200e1

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 246
    sget-object v23, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 247
    const/16 v23, -0x1

    const/16 v24, -0x2

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 248
    const/16 v23, 0x0

    const/high16 v24, 0x42400000    # 48.0f

    invoke-static/range {v24 .. v24}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 249
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->extParamsView:Landroid/view/View;

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->extParamsView:Landroid/view/View;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 251
    new-instance v10, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 252
    .local v10, "btnShadow":Landroid/widget/ImageView;
    const v23, 0x7f0200e1

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 253
    sget-object v23, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 254
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x2

    const/16 v25, 0x30

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v9, v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 255
    .local v9, "bslp":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v23, 0x42400000    # 48.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    move/from16 v0, v23

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 256
    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    new-instance v23, Lcom/vkontakte/android/ui/OverlayTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/vkontakte/android/ui/OverlayTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->paramsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->paramsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v23, v0

    const v24, 0x7f080332

    invoke-virtual/range {v23 .. v24}, Lcom/vkontakte/android/ui/OverlayTextView;->setText(I)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->paramsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v23, v0

    const v24, -0x797776

    invoke-virtual/range {v23 .. v24}, Lcom/vkontakte/android/ui/OverlayTextView;->setTextColor(I)V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->paramsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v23, v0

    const v24, -0xf0e0e

    invoke-virtual/range {v23 .. v24}, Lcom/vkontakte/android/ui/OverlayTextView;->setBackgroundColor(I)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->paramsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/high16 v25, 0x41800000    # 16.0f

    invoke-virtual/range {v23 .. v25}, Lcom/vkontakte/android/ui/OverlayTextView;->setTextSize(IF)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->paramsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v23, v0

    const/16 v24, 0x13

    invoke-virtual/range {v23 .. v24}, Lcom/vkontakte/android/ui/OverlayTextView;->setGravity(I)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->paramsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v23, v0

    const/high16 v24, 0x41400000    # 12.0f

    invoke-static/range {v24 .. v24}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v24

    const/16 v25, 0x0

    const/high16 v26, 0x41400000    # 12.0f

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v26

    const/16 v27, 0x0

    invoke-virtual/range {v23 .. v27}, Lcom/vkontakte/android/ui/OverlayTextView;->setPadding(IIII)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->paramsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v23, v0

    const v24, 0x7f0200e6

    invoke-virtual/range {v23 .. v24}, Lcom/vkontakte/android/ui/OverlayTextView;->setOverlay(I)V

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0201d0

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 267
    .local v8, "arrow":Landroid/graphics/drawable/Drawable;
    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v25

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v26

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->paramsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v8, v3}, Lcom/vkontakte/android/ui/OverlayTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 269
    new-instance v21, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 270
    .local v21, "wlp":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v23, 0x42400000    # 48.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v21

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->wrap:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->paramsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v23, v0

    new-instance v24, Lcom/vkontakte/android/fragments/BrowseUsersFragment$5;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment$5;-><init>(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)V

    invoke-virtual/range {v23 .. v24}, Lcom/vkontakte/android/ui/OverlayTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->content:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->content:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->extParamsView:Landroid/view/View;

    move-object/from16 v24, v0

    new-instance v25, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v26, -0x1

    const/16 v27, -0x1

    invoke-direct/range {v25 .. v27}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v23 .. v25}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->content:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->paramsBtn:Lcom/vkontakte/android/ui/OverlayTextView;

    move-object/from16 v24, v0

    new-instance v25, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v26, -0x1

    const/high16 v27, 0x42400000    # 48.0f

    invoke-static/range {v27 .. v27}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v27

    const/16 v28, 0x30

    invoke-direct/range {v25 .. v28}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual/range {v23 .. v25}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    .end local v8    # "arrow":Landroid/graphics/drawable/Drawable;
    .end local v9    # "bslp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v10    # "btnShadow":Landroid/widget/ImageView;
    .end local v17    # "ll":Landroid/widget/LinearLayout;
    .end local v19    # "shadow":Landroid/widget/ImageView;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->list:Landroid/widget/ListView;

    move-object/from16 v23, v0

    new-instance v24, Lcom/vkontakte/android/fragments/BrowseUsersFragment$UsersAdapter;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment$UsersAdapter;-><init>(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->adapter:Lcom/vkontakte/android/fragments/BrowseUsersFragment$UsersAdapter;

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 296
    new-instance v23, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v24, Lcom/vkontakte/android/fragments/BrowseUsersFragment$UserPhotosAdapter;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment$UserPhotosAdapter;-><init>(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->list:Landroid/widget/ListView;

    move-object/from16 v25, v0

    new-instance v26, Lcom/vkontakte/android/fragments/BrowseUsersFragment$6;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment$6;-><init>(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)V

    invoke-direct/range {v23 .. v26}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->extParamsView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f090187

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Spinner;

    .line 331
    .local v13, "countrySpinner":Landroid/widget/Spinner;
    const/16 v23, 0x1

    const/16 v24, 0x1

    const v25, 0x7f08031c

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v23 .. v25}, Lcom/vkontakte/android/data/database/Country;->getCountries(ZZLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 332
    .local v11, "countries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/data/database/Country;>;"
    new-instance v12, Lcom/vkontakte/android/fragments/BrowseUsersFragment$7;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v24

    const v25, 0x1090008

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Lcom/vkontakte/android/data/database/Country;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Lcom/vkontakte/android/data/database/Country;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v23

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/vkontakte/android/fragments/BrowseUsersFragment$7;-><init>(Lcom/vkontakte/android/fragments/BrowseUsersFragment;Landroid/content/Context;I[Lcom/vkontakte/android/data/database/Country;)V

    .line 345
    .local v12, "countryAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/vkontakte/android/data/database/Country;>;"
    const v23, 0x1090009

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 346
    invoke-virtual {v13, v12}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 347
    new-instance v23, Lcom/vkontakte/android/fragments/BrowseUsersFragment$8;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment$8;-><init>(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)V

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 363
    new-instance v15, Lcom/vkontakte/android/fragments/BrowseUsersFragment$9;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment$9;-><init>(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)V

    .line 373
    .local v15, "genderClickListener":Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->extParamsView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f09018a

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setSelected(Z)V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->extParamsView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f09018a

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->extParamsView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f09018b

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->extParamsView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f09018c

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    new-instance v5, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v23

    const v24, 0x1090008

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v5, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 379
    .local v5, "ageAdapterFrom":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v23, 0x1090009

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f08032c

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 381
    new-instance v6, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v23

    const v24, 0x1090008

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v6, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 382
    .local v6, "ageAdapterTo":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v23, 0x1090009

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f08032d

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 384
    const/16 v16, 0xe

    .local v16, "i":I
    :goto_3
    const/16 v23, 0x50

    move/from16 v0, v16

    move/from16 v1, v23

    if-le v0, v1, :cond_6

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->extParamsView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f09018d

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Spinner;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->extParamsView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f09018e

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Spinner;

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 390
    new-instance v7, Lcom/vkontakte/android/fragments/BrowseUsersFragment$10;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment$10;-><init>(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)V

    .line 416
    .local v7, "ageSelListener":Landroid/widget/AdapterView$OnItemSelectedListener;, "Landroid/widget/AdapterView$OnItemSelectedListener;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->extParamsView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f09018d

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Spinner;

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->extParamsView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f09018e

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Spinner;

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 419
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v23

    const v24, 0x7f0d0064

    const v25, 0x1090008

    invoke-static/range {v23 .. v25}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v18

    .line 420
    .local v18, "relationAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v23, 0x1090009

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->extParamsView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f09018f

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Spinner;

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->extParamsView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f09018f

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Spinner;

    new-instance v24, Lcom/vkontakte/android/fragments/BrowseUsersFragment$11;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment$11;-><init>(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->extParamsView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f090188

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    new-instance v24, Lcom/vkontakte/android/fragments/BrowseUsersFragment$12;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment$12;-><init>(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)V

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->content:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    return-object v23

    .line 218
    .end local v5    # "ageAdapterFrom":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v6    # "ageAdapterTo":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v7    # "ageSelListener":Landroid/widget/AdapterView$OnItemSelectedListener;, "Landroid/widget/AdapterView$OnItemSelectedListener;"
    .end local v11    # "countries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/data/database/Country;>;"
    .end local v12    # "countryAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/vkontakte/android/data/database/Country;>;"
    .end local v13    # "countrySpinner":Landroid/widget/Spinner;
    .end local v15    # "genderClickListener":Landroid/view/View$OnClickListener;
    .end local v16    # "i":I
    .end local v18    # "relationAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v21    # "wlp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    const/16 v23, 0x8

    goto/16 :goto_0

    .line 219
    :cond_1
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 282
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    .line 283
    .local v14, "dm":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->extParamsView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f090186

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    iget v0, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v24, v0

    iget v0, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_3

    const/16 v24, 0x1

    :goto_4
    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->extParamsView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f090189

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    iget v0, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v24, v0

    iget v0, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_4

    const/16 v24, 0x1

    :goto_5
    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 285
    iget v0, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v23, v0

    iget v0, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    const/high16 v23, 0x43480000    # 200.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v20

    .line 286
    .local v20, "size":I
    :goto_6
    new-instance v21, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 287
    .restart local v21    # "wlp":Landroid/widget/FrameLayout$LayoutParams;
    move/from16 v0, v20

    move-object/from16 v1, v21

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->wrap:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    new-instance v22, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, 0x35

    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 291
    .local v22, "xlp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->progress:Landroid/widget/ProgressBar;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup$MarginLayoutParams;

    div-int/lit8 v24, v20, 0x2

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->content:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->extParamsView:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 283
    .end local v20    # "size":I
    .end local v21    # "wlp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v22    # "xlp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    const/16 v24, 0x0

    goto/16 :goto_4

    .line 284
    :cond_4
    const/16 v24, 0x0

    goto :goto_5

    .line 285
    :cond_5
    const/high16 v23, 0x43b90000    # 370.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v20

    goto :goto_6

    .line 385
    .end local v14    # "dm":Landroid/util/DisplayMetrics;
    .restart local v5    # "ageAdapterFrom":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v6    # "ageAdapterTo":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v11    # "countries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/data/database/Country;>;"
    .restart local v12    # "countryAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/vkontakte/android/data/database/Country;>;"
    .restart local v13    # "countrySpinner":Landroid/widget/Spinner;
    .restart local v15    # "genderClickListener":Landroid/view/View$OnClickListener;
    .restart local v16    # "i":I
    .restart local v21    # "wlp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_6
    const v23, 0x7f080330

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 386
    const v23, 0x7f080331

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 384
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 536
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroyView()V

    .line 537
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 538
    iput-object v1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->list:Landroid/widget/ListView;

    .line 539
    iput-object v1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->wrap:Landroid/widget/FrameLayout;

    .line 540
    iput-object v1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->content:Landroid/widget/FrameLayout;

    .line 541
    iput-object v1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->extParamsView:Landroid/view/View;

    .line 542
    iput-object v1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 543
    iput-object v1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->adapter:Lcom/vkontakte/android/fragments/BrowseUsersFragment$UsersAdapter;

    .line 544
    iput-object v1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->progress:Landroid/widget/ProgressBar;

    .line 545
    iput-object v1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->loadMoreView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    .line 546
    iput-object v1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->empty:Lcom/vkontakte/android/ui/EmptyView;

    .line 547
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 549
    iput-object v1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 551
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 172
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 173
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDetach()V

    .line 174
    return-void
.end method
