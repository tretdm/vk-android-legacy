.class public Lcom/vkontakte/android/fragments/GroupsFragment;
.super Lcom/vkontakte/android/fragments/ContainerFragment;
.source "GroupsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/GroupsFragment$FriendsPagerAdapter;
    }
.end annotation


# instance fields
.field private allGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field private contentView:Landroid/widget/LinearLayout;

.field private contentWrap:Landroid/widget/FrameLayout;

.field private currentReq:Lcom/vkontakte/android/APIRequest;

.field private errorView:Lcom/vkontakte/android/ui/ErrorView;

.field private events:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field private eventsView:Lcom/vkontakte/android/fragments/GroupListFragment;

.field private groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field private groupsView:Lcom/vkontakte/android/fragments/GroupListFragment;

.field private lists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private numInvites:I

.field private pager:Landroid/support/v4/view/ViewPager;

.field private progress:Landroid/widget/ProgressBar;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private reqsLoaded:Z

.field private requestsView:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

.field private searchView:Lcom/actionbarsherlock/widget/SearchView;

.field private searching:Z

.field private select:Z

.field private showAdmined:Z

.field private tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

.field private titles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ContainerFragment;-><init>()V

    .line 50
    sget v0, Lcom/vkontakte/android/Global;->uid:I

    iput v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->uid:I

    .line 52
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->reqsLoaded:Z

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->allGroups:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->groups:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->events:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->titles:Ljava/util/ArrayList;

    .line 61
    sget v0, Lcom/vkontakte/android/LongPollService;->numGroupInvitations:I

    iput v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->numInvites:I

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->lists:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Lcom/vkontakte/android/fragments/GroupsFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/GroupsFragment$1;-><init>(Lcom/vkontakte/android/fragments/GroupsFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 85
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->searching:Z

    .line 89
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/GroupsFragment;)V
    .locals 0

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/GroupsFragment;->update()V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/GroupsFragment;I)V
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->numInvites:I

    return-void
.end method

.method static synthetic access$10(Lcom/vkontakte/android/fragments/GroupsFragment;)Lcom/vkontakte/android/fragments/GroupInvitationsFragment;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->requestsView:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/fragments/GroupsFragment;Z)V
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->showAdmined:Z

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/fragments/GroupsFragment;)Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->searching:Z

    return v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/fragments/GroupsFragment;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->reqsLoaded:Z

    return v0
.end method

.method static synthetic access$14(Lcom/vkontakte/android/fragments/GroupsFragment;Z)V
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->reqsLoaded:Z

    return-void
.end method

.method static synthetic access$15(Lcom/vkontakte/android/fragments/GroupsFragment;Z)V
    .locals 0

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->searching:Z

    return-void
.end method

.method static synthetic access$16(Lcom/vkontakte/android/fragments/GroupsFragment;)Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    return-object v0
.end method

.method static synthetic access$17(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->allGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$18(Lcom/vkontakte/android/fragments/GroupsFragment;)Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->showAdmined:Z

    return v0
.end method

.method static synthetic access$19(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->groups:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/GroupsFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->pager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$20(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->events:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$21(Lcom/vkontakte/android/fragments/GroupsFragment;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->contentView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$22(Lcom/vkontakte/android/fragments/GroupsFragment;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$23(Lcom/vkontakte/android/fragments/GroupsFragment;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$24(Lcom/vkontakte/android/fragments/GroupsFragment;)Lcom/vkontakte/android/ui/ErrorView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/fragments/GroupsFragment;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->numInvites:I

    return v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/fragments/GroupsFragment;)V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/GroupsFragment;->updateTabs()V

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/fragments/GroupsFragment;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->uid:I

    return v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/fragments/GroupsFragment;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->select:Z

    return v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/fragments/GroupsFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->titles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/fragments/GroupsFragment;)Lcom/vkontakte/android/fragments/GroupListFragment;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->groupsView:Lcom/vkontakte/android/fragments/GroupListFragment;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/fragments/GroupsFragment;)Lcom/vkontakte/android/fragments/GroupListFragment;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->eventsView:Lcom/vkontakte/android/fragments/GroupListFragment;

    return-object v0
.end method

.method private update()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 329
    iget v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->uid:I

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v1, :cond_1

    .line 330
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 334
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/fragments/GroupsFragment$11;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/GroupsFragment$11;-><init>(Lcom/vkontakte/android/fragments/GroupsFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 370
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 404
    :goto_0
    return-void

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 374
    new-instance v0, Lcom/vkontakte/android/api/GroupsGet;

    iget v1, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->uid:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/GroupsGet;-><init>(I)V

    .line 375
    new-instance v1, Lcom/vkontakte/android/fragments/GroupsFragment$12;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/GroupsFragment$12;-><init>(Lcom/vkontakte/android/fragments/GroupsFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/GroupsGet;->setCallback(Lcom/vkontakte/android/api/GroupsGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 402
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 374
    iput-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method private updateTabs()V
    .locals 4

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 304
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->titles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 296
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->titles:Ljava/util/ArrayList;

    const v1, 0x7f0d0050

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->groups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->titles:Ljava/util/ArrayList;

    const v1, 0x7f0d0051

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->events:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    iget v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->numInvites:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->uid:I

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v1, :cond_1

    .line 299
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->titles:Ljava/util/ArrayList;

    const v1, 0x7f08019b

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/fragments/GroupsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 302
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 303
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->postInvalidate()V

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 13
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/ContainerFragment;->onAttach(Landroid/app/Activity;)V

    .line 93
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "select"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->select:Z

    .line 94
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "uid"

    sget v9, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->uid:I

    .line 95
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "groups?id="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/vkontakte/android/ActivityUtils;->setBeamLink(Landroid/app/Activity;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupsFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v2

    .line 97
    .local v2, "sa":Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    iget v7, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->uid:I

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->uid:I

    sget v8, Lcom/vkontakte/android/Global;->uid:I

    if-ne v7, v8, :cond_4

    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "admin_only"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 98
    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 99
    new-instance v0, Lcom/vkontakte/android/fragments/GroupsFragment$2;

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f03005b

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v7, v8, v9}, Lcom/vkontakte/android/fragments/GroupsFragment$2;-><init>(Lcom/vkontakte/android/fragments/GroupsFragment;Landroid/content/Context;ILjava/util/List;)V

    .line 104
    .local v0, "navAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v7, 0x7f0800fa

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/fragments/GroupsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 105
    const v7, 0x7f0801d9

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/fragments/GroupsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 106
    const v7, 0x7f030084

    invoke-virtual {v0, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 107
    new-instance v1, Lcom/vkontakte/android/fragments/GroupsFragment$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/GroupsFragment$3;-><init>(Lcom/vkontakte/android/fragments/GroupsFragment;)V

    .line 116
    .local v1, "navListener":Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;
    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;)V

    .line 117
    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 126
    .end local v0    # "navAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1    # "navListener":Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "admin_only"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 127
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->showAdmined:Z

    .line 130
    :cond_1
    new-instance v7, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-direct {v7, p1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    .line 131
    iget-object v7, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    const v8, 0x7f060015

    invoke-virtual {v7, v8}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setBackgroundResource(I)V

    .line 132
    iget-object v7, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    const v8, 0x7f060014

    invoke-virtual {v7, v8}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setIndicatorColorResource(I)V

    .line 134
    new-instance v7, Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-direct {v7}, Lcom/vkontakte/android/fragments/GroupListFragment;-><init>()V

    iput-object v7, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->groupsView:Lcom/vkontakte/android/fragments/GroupListFragment;

    .line 136
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->contentView:Landroid/widget/LinearLayout;

    .line 137
    iget-object v7, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->contentView:Landroid/widget/LinearLayout;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 138
    iget-object v7, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->contentView:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/high16 v11, 0x42400000    # 48.0f

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    new-instance v7, Lcom/vkontakte/android/fragments/GroupsFragment$4;

    invoke-direct {v7, p0, p1}, Lcom/vkontakte/android/fragments/GroupsFragment$4;-><init>(Lcom/vkontakte/android/fragments/GroupsFragment;Landroid/content/Context;)V

    iput-object v7, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->pager:Landroid/support/v4/view/ViewPager;

    .line 152
    iget-object v7, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->pager:Landroid/support/v4/view/ViewPager;

    const v8, 0x7f09001c

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPager;->setId(I)V

    .line 153
    iget-object v7, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->contentView:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object v7, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v8, Lcom/vkontakte/android/fragments/GroupsFragment$FriendsPagerAdapter;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/fragments/GroupsFragment$FriendsPagerAdapter;-><init>(Lcom/vkontakte/android/fragments/GroupsFragment;)V

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 155
    iget-object v7, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7, v8}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 157
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/GroupsFragment;->updateTabs()V

    .line 158
    new-instance v7, Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-direct {v7}, Lcom/vkontakte/android/fragments/GroupListFragment;-><init>()V

    iput-object v7, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->eventsView:Lcom/vkontakte/android/fragments/GroupListFragment;

    .line 159
    iget v7, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->uid:I

    sget v8, Lcom/vkontakte/android/Global;->uid:I

    if-ne v7, v8, :cond_2

    .line 160
    new-instance v7, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-direct {v7}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;-><init>()V

    iput-object v7, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->requestsView:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    .line 164
    :cond_2
    iget-object v7, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    new-instance v8, Lcom/vkontakte/android/fragments/GroupsFragment$5;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/fragments/GroupsFragment$5;-><init>(Lcom/vkontakte/android/fragments/GroupsFragment;)V

    invoke-virtual {v7, v8}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 186
    new-instance v7, Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8}, Lcom/actionbarsherlock/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/actionbarsherlock/widget/SearchView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    .line 187
    iget-object v7, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080060

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/actionbarsherlock/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 189
    :try_start_0
    const-class v7, Lcom/actionbarsherlock/widget/SearchView;

    const-string v8, "mSearchButton"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 190
    .local v4, "searchField":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 191
    iget-object v7, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 192
    .local v3, "searchBtn":Landroid/widget/ImageView;
    const v7, 0x7f0200fb

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 193
    const-class v7, Lcom/actionbarsherlock/widget/SearchView;

    const-string v8, "mSearchPlate"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 194
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 195
    iget-object v7, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 196
    .local v5, "searchPlate":Landroid/widget/LinearLayout;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, -0x7f000001

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setHintTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local v3    # "searchBtn":Landroid/widget/ImageView;
    .end local v4    # "searchField":Ljava/lang/reflect/Field;
    .end local v5    # "searchPlate":Landroid/widget/LinearLayout;
    :goto_1
    iget-object v7, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    new-instance v8, Lcom/vkontakte/android/fragments/GroupsFragment$6;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/fragments/GroupsFragment$6;-><init>(Lcom/vkontakte/android/fragments/GroupsFragment;)V

    invoke-virtual {v7, v8}, Lcom/actionbarsherlock/widget/SearchView;->setOnQueryTextListener(Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V

    .line 228
    iget-object v7, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    new-instance v8, Lcom/vkontakte/android/fragments/GroupsFragment$7;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/fragments/GroupsFragment$7;-><init>(Lcom/vkontakte/android/fragments/GroupsFragment;)V

    invoke-virtual {v7, v8}, Lcom/actionbarsherlock/widget/SearchView;->setOnSearchClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v7, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    new-instance v8, Lcom/vkontakte/android/fragments/GroupsFragment$8;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/fragments/GroupsFragment$8;-><init>(Lcom/vkontakte/android/fragments/GroupsFragment;)V

    invoke-virtual {v7, v8}, Lcom/actionbarsherlock/widget/SearchView;->setOnCloseListener(Lcom/actionbarsherlock/widget/SearchView$OnCloseListener;)V

    .line 242
    new-instance v7, Landroid/widget/ProgressBar;

    invoke-direct {v7, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->progress:Landroid/widget/ProgressBar;

    .line 244
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->contentWrap:Landroid/widget/FrameLayout;

    .line 245
    iget-object v7, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->contentWrap:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 246
    iget-object v7, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->contentWrap:Landroid/widget/FrameLayout;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 247
    iget-object v7, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->contentWrap:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->progress:Landroid/widget/ProgressBar;

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v10, 0x42200000    # 40.0f

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v10

    const/high16 v11, 0x42200000    # 40.0f

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v11

    const/16 v12, 0x11

    invoke-direct {v9, v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v7, v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    const v7, 0x7f03003f

    const/4 v8, 0x0

    invoke-static {p1, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/ui/ErrorView;

    iput-object v7, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    .line 250
    iget-object v7, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 251
    iget-object v7, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->contentWrap:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 253
    iget-object v7, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    new-instance v8, Lcom/vkontakte/android/fragments/GroupsFragment$9;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/fragments/GroupsFragment$9;-><init>(Lcom/vkontakte/android/fragments/GroupsFragment;)V

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/ErrorView;->setOnRetryListener(Landroid/view/View$OnClickListener;)V

    .line 260
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/fragments/GroupsFragment;->setHasOptionsMenu(Z)V

    .line 261
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/GroupsFragment;->update()V

    .line 263
    iget-boolean v7, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->select:Z

    if-eqz v7, :cond_3

    .line 264
    new-instance v6, Lcom/vkontakte/android/fragments/GroupsFragment$10;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/GroupsFragment$10;-><init>(Lcom/vkontakte/android/fragments/GroupsFragment;)V

    .line 275
    .local v6, "sl":Lcom/vkontakte/android/fragments/GroupListFragment$SelectionListener;
    iget-object v7, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->groupsView:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-virtual {v7, v6}, Lcom/vkontakte/android/fragments/GroupListFragment;->setSelectionListener(Lcom/vkontakte/android/fragments/GroupListFragment$SelectionListener;)V

    .line 276
    iget-object v7, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->eventsView:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-virtual {v7, v6}, Lcom/vkontakte/android/fragments/GroupListFragment;->setSelectionListener(Lcom/vkontakte/android/fragments/GroupListFragment$SelectionListener;)V

    .line 278
    .end local v6    # "sl":Lcom/vkontakte/android/fragments/GroupListFragment$SelectionListener;
    :cond_3
    return-void

    .line 119
    :cond_4
    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 120
    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 121
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "title"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 122
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "title"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 124
    :cond_5
    const v7, 0x7f0800fa

    invoke-virtual {v2, v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->setTitle(I)V

    goto/16 :goto_0

    .line 197
    :catch_0
    move-exception v7

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 311
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/ContainerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 312
    iget v1, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->uid:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->uid:I

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    if-ne v1, v2, :cond_1

    .line 313
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 314
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkontakte.android.GROUP_LIST_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    const-string v1, "com.vkontakte.android.GROUP_INVITES_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.vkontakte.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 318
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 287
    const v1, 0x7f080060

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->add(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 288
    .local v0, "search":Lcom/actionbarsherlock/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 289
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setActionView(Landroid/view/View;)Lcom/actionbarsherlock/view/MenuItem;

    .line 290
    invoke-super {p0, p1, p2}, Lcom/vkontakte/android/fragments/ContainerFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 291
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->contentWrap:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 321
    invoke-super {p0}, Lcom/vkontakte/android/fragments/ContainerFragment;->onDestroy()V

    .line 323
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 326
    :cond_0
    return-void

    .line 324
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 281
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupsFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/actionbarsherlock/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;)V

    .line 282
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupsFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 283
    invoke-super {p0}, Lcom/vkontakte/android/fragments/ContainerFragment;->onDetach()V

    .line 284
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 456
    invoke-super {p0}, Lcom/vkontakte/android/fragments/ContainerFragment;->onPause()V

    .line 457
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 460
    invoke-super {p0}, Lcom/vkontakte/android/fragments/ContainerFragment;->onResume()V

    .line 461
    return-void
.end method
