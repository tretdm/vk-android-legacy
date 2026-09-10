.class public Lcom/vkontakte/android/SuggestionsActivity;
.super Lcom/vkontakte/android/VKFragmentActivity;
.source "SuggestionsActivity.java"


# instance fields
.field private contentView:Landroid/widget/FrameLayout;

.field private doneBtn:Landroid/view/View;

.field private friends:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

.field private page:I

.field private progress:Lcom/vkontakte/android/ui/ActionBarProgressDrawable;

.field private recommendations:Lcom/vkontakte/android/fragments/SuggestionsRecommendationsFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/vkontakte/android/VKFragmentActivity;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/SuggestionsActivity;->page:I

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/SuggestionsActivity;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/vkontakte/android/SuggestionsActivity;->page:I

    return v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/SuggestionsActivity;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/vkontakte/android/SuggestionsActivity;->switchScreen()V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/SuggestionsActivity;I)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/vkontakte/android/SuggestionsActivity;->updateIntroFlags(I)V

    return-void
.end method

.method private switchScreen()V
    .locals 6

    .prologue
    const v3, 0x7f09001b

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 87
    iget v2, p0, Lcom/vkontakte/android/SuggestionsActivity;->page:I

    if-nez v2, :cond_3

    .line 88
    iput v5, p0, Lcom/vkontakte/android/SuggestionsActivity;->page:I

    .line 89
    iget-object v2, p0, Lcom/vkontakte/android/SuggestionsActivity;->recommendations:Lcom/vkontakte/android/fragments/SuggestionsRecommendationsFragment;

    if-nez v2, :cond_0

    .line 90
    new-instance v2, Lcom/vkontakte/android/fragments/SuggestionsRecommendationsFragment;

    invoke-direct {v2}, Lcom/vkontakte/android/fragments/SuggestionsRecommendationsFragment;-><init>()V

    iput-object v2, p0, Lcom/vkontakte/android/SuggestionsActivity;->recommendations:Lcom/vkontakte/android/fragments/SuggestionsRecommendationsFragment;

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/SuggestionsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 93
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v2, p0, Lcom/vkontakte/android/SuggestionsActivity;->recommendations:Lcom/vkontakte/android/fragments/SuggestionsRecommendationsFragment;

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 94
    const v2, 0x7f08029e

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/SuggestionsActivity;->setTitle(I)V

    .line 95
    invoke-virtual {p0}, Lcom/vkontakte/android/SuggestionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "groups"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 96
    invoke-virtual {p0}, Lcom/vkontakte/android/SuggestionsActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 97
    invoke-virtual {p0}, Lcom/vkontakte/android/SuggestionsActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 118
    .end local v1    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/SuggestionsActivity;->progress:Lcom/vkontakte/android/ui/ActionBarProgressDrawable;

    iget v3, p0, Lcom/vkontakte/android/SuggestionsActivity;->page:I

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ActionBarProgressDrawable;->setStepAnimated(I)V

    .line 119
    return-void

    .line 99
    .restart local v1    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/SuggestionsActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 100
    invoke-virtual {p0}, Lcom/vkontakte/android/SuggestionsActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto :goto_0

    .line 103
    .end local v1    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_3
    iget v2, p0, Lcom/vkontakte/android/SuggestionsActivity;->page:I

    if-ne v2, v5, :cond_1

    .line 104
    iput v4, p0, Lcom/vkontakte/android/SuggestionsActivity;->page:I

    .line 105
    iget-object v2, p0, Lcom/vkontakte/android/SuggestionsActivity;->friends:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    if-nez v2, :cond_4

    .line 106
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 107
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "from_signup"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 108
    new-instance v2, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-direct {v2}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;-><init>()V

    iput-object v2, p0, Lcom/vkontakte/android/SuggestionsActivity;->friends:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    .line 109
    iget-object v2, p0, Lcom/vkontakte/android/SuggestionsActivity;->friends:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v2, v0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 111
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_4
    invoke-virtual {p0}, Lcom/vkontakte/android/SuggestionsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 112
    .restart local v1    # "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v2, p0, Lcom/vkontakte/android/SuggestionsActivity;->friends:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 113
    const v2, 0x7f0802b7

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/SuggestionsActivity;->setTitle(I)V

    .line 114
    invoke-virtual {p0}, Lcom/vkontakte/android/SuggestionsActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 115
    invoke-virtual {p0}, Lcom/vkontakte/android/SuggestionsActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto :goto_0
.end method

.method private updateIntroFlags(I)V
    .locals 5
    .param p1, "remove"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 122
    invoke-virtual {p0, v4, v3}, Lcom/vkontakte/android/SuggestionsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "intro"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 123
    .local v0, "intro":I
    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    .line 124
    invoke-virtual {p0, v4, v3}, Lcom/vkontakte/android/SuggestionsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "intro"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 125
    new-instance v1, Lcom/vkontakte/android/api/AccountSetInfo;

    invoke-direct {v1, v0}, Lcom/vkontakte/android/api/AccountSetInfo;-><init>(I)V

    .line 126
    new-instance v2, Lcom/vkontakte/android/SuggestionsActivity$3;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/SuggestionsActivity$3;-><init>(Lcom/vkontakte/android/SuggestionsActivity;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/api/AccountSetInfo;->setCallback(Lcom/vkontakte/android/api/AccountSetInfo$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 137
    invoke-virtual {v1}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 138
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 81
    invoke-static {v0}, Lcom/vkontakte/android/data/Friends;->reload(Z)V

    .line 82
    invoke-static {v0}, Lcom/vkontakte/android/data/Groups;->reload(Z)V

    .line 83
    invoke-super {p0}, Lcom/vkontakte/android/VKFragmentActivity;->finish()V

    .line 84
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 150
    invoke-super {p0, p1, p2, p3}, Lcom/vkontakte/android/VKFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 151
    const/16 v0, 0x66

    if-ne p1, v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/vkontakte/android/SuggestionsActivity;->friends:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 154
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 141
    iget v0, p0, Lcom/vkontakte/android/SuggestionsActivity;->page:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/SuggestionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "groups"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/vkontakte/android/SuggestionsActivity;->switchScreen()V

    .line 147
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/SuggestionsActivity;->setResult(I)V

    .line 145
    invoke-virtual {p0}, Lcom/vkontakte/android/SuggestionsActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-super {p0, p1}, Lcom/vkontakte/android/VKFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/SuggestionsActivity;->contentView:Landroid/widget/FrameLayout;

    .line 34
    iget-object v0, p0, Lcom/vkontakte/android/SuggestionsActivity;->contentView:Landroid/widget/FrameLayout;

    const v2, 0x7f09001b

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 36
    iget-object v0, p0, Lcom/vkontakte/android/SuggestionsActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/SuggestionsActivity;->setContentView(Landroid/view/View;)V

    .line 38
    const/high16 v0, 0x7f030000

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/SuggestionsActivity;->doneBtn:Landroid/view/View;

    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/SuggestionsActivity;->doneBtn:Landroid/view/View;

    const v2, 0x7f09002b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0800c8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/SuggestionsActivity;->doneBtn:Landroid/view/View;

    new-instance v2, Lcom/vkontakte/android/SuggestionsActivity$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/SuggestionsActivity$1;-><init>(Lcom/vkontakte/android/SuggestionsActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    new-instance v0, Lcom/vkontakte/android/SuggestionsActivity$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/SuggestionsActivity$2;-><init>(Lcom/vkontakte/android/SuggestionsActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/SuggestionsActivity;->progress:Lcom/vkontakte/android/ui/ActionBarProgressDrawable;

    .line 62
    iget-object v0, p0, Lcom/vkontakte/android/SuggestionsActivity;->progress:Lcom/vkontakte/android/ui/ActionBarProgressDrawable;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/ActionBarProgressDrawable;->setStepCount(I)V

    .line 63
    iget-object v0, p0, Lcom/vkontakte/android/SuggestionsActivity;->progress:Lcom/vkontakte/android/ui/ActionBarProgressDrawable;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ActionBarProgressDrawable;->setStep(I)V

    .line 64
    invoke-virtual {p0}, Lcom/vkontakte/android/SuggestionsActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    iget-object v2, p0, Lcom/vkontakte/android/SuggestionsActivity;->progress:Lcom/vkontakte/android/ui/ActionBarProgressDrawable;

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    invoke-virtual {p0}, Lcom/vkontakte/android/SuggestionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "groups"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/vkontakte/android/SuggestionsActivity;->page:I

    .line 70
    invoke-direct {p0}, Lcom/vkontakte/android/SuggestionsActivity;->switchScreen()V

    .line 71
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 74
    const v1, 0x7f08002c

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->add(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 75
    .local v0, "item":Lcom/actionbarsherlock/view/MenuItem;
    iget-object v1, p0, Lcom/vkontakte/android/SuggestionsActivity;->doneBtn:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setActionView(Landroid/view/View;)Lcom/actionbarsherlock/view/MenuItem;

    .line 76
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 77
    const/4 v1, 0x1

    return v1
.end method
