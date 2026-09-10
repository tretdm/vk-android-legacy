.class public Lcom/actionbarsherlock/internal/ActionBarSherlockNative;
.super Lcom/actionbarsherlock/ActionBarSherlock;
.source "ActionBarSherlockNative.java"


# annotations
.annotation runtime Lcom/actionbarsherlock/ActionBarSherlock$Implementation;
    api = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeCallbackWrapper;,
        Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;
    }
.end annotation


# instance fields
.field private mActionBar:Lcom/actionbarsherlock/internal/app/ActionBarWrapper;

.field private mActionMode:Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;

.field private mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "flags"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/actionbarsherlock/ActionBarSherlock;-><init>(Landroid/app/Activity;I)V

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/actionbarsherlock/internal/ActionBarSherlockNative;Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActionMode:Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;

    return-void
.end method

.method static synthetic access$1(Lcom/actionbarsherlock/internal/ActionBarSherlockNative;)Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActionMode:Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;

    return-object v0
.end method

.method static synthetic access$2(Lcom/actionbarsherlock/internal/ActionBarSherlockNative;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private initActionBar()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActionBar:Lcom/actionbarsherlock/internal/app/ActionBarWrapper;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    new-instance v0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActionBar:Lcom/actionbarsherlock/internal/app/ActionBarWrapper;

    goto :goto_0
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 148
    const-string v0, "ActionBarSherlock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[addContentView] view: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->initActionBar()V

    .line 152
    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 59
    const-string v1, "ActionBarSherlock"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[dispatchCreateOptionsMenu] menu: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->unwrap()Landroid/view/Menu;

    move-result-object v1

    if-eq p1, v1, :cond_1

    .line 62
    :cond_0
    new-instance v1, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    invoke-direct {v1, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;-><init>(Landroid/view/Menu;)V

    iput-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->callbackCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    .line 66
    .local v0, "result":Z
    const-string v1, "ActionBarSherlock"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[dispatchCreateOptionsMenu] returning "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return v0
.end method

.method public dispatchInvalidateOptionsMenu()V
    .locals 2

    .prologue
    .line 50
    const-string v0, "ActionBarSherlock"

    const-string v1, "[dispatchInvalidateOptionsMenu]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->invalidatePanelMenu(I)V

    .line 54
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->invalidate()V

    .line 55
    :cond_0
    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 81
    const-string v2, "ActionBarSherlock"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[dispatchOptionsItemSelected] item: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v2, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    if-nez v2, :cond_1

    .line 85
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-eq v2, v3, :cond_0

    .line 86
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Non-home action item clicked before onCreateOptionsMenu with ID "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    :cond_0
    new-instance v1, Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper;

    invoke-direct {v1, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemWrapper;-><init>(Landroid/view/MenuItem;)V

    .line 93
    .local v1, "wrapped":Lcom/actionbarsherlock/view/MenuItem;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->callbackOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    .line 94
    .local v0, "result":Z
    const-string v2, "ActionBarSherlock"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[dispatchOptionsItemSelected] returning "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return v0

    .line 91
    .end local v0    # "result":Z
    .end local v1    # "wrapped":Lcom/actionbarsherlock/view/MenuItem;
    :cond_1
    iget-object v2, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    invoke-virtual {v2, p1}, Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;->findItem(Landroid/view/MenuItem;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    .restart local v1    # "wrapped":Lcom/actionbarsherlock/view/MenuItem;
    goto :goto_0
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 72
    const-string v1, "ActionBarSherlock"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[dispatchPrepareOptionsMenu] menu: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuWrapper;

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->callbackPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    .line 75
    .local v0, "result":Z
    const-string v1, "ActionBarSherlock"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[dispatchPrepareOptionsMenu] returning "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return v0
.end method

.method public getActionBar()Lcom/actionbarsherlock/app/ActionBar;
    .locals 2

    .prologue
    .line 34
    const-string v0, "ActionBarSherlock"

    const-string v1, "[getActionBar]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->initActionBar()V

    .line 37
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActionBar:Lcom/actionbarsherlock/internal/app/ActionBarWrapper;

    return-object v0
.end method

.method protected getThemedContext()Landroid/content/Context;
    .locals 6

    .prologue
    .line 198
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    .line 199
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 200
    .local v2, "outValue":Landroid/util/TypedValue;
    iget-object v3, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010397

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 201
    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_0

    .line 205
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, v0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .end local v0    # "context":Landroid/content/Context;
    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 207
    .end local v1    # "context":Landroid/content/Context;
    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    return-object v0
.end method

.method public hasFeature(I)Z
    .locals 4
    .param p1, "feature"    # I

    .prologue
    .line 100
    const-string v1, "ActionBarSherlock"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[hasFeature] feature: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    .line 103
    .local v0, "result":Z
    const-string v1, "ActionBarSherlock"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[hasFeature] returning "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return v0
.end method

.method public requestFeature(I)Z
    .locals 4
    .param p1, "featureId"    # I

    .prologue
    .line 109
    const-string v1, "ActionBarSherlock"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[requestFeature] featureId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    .line 112
    .local v0, "result":Z
    const-string v1, "ActionBarSherlock"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[requestFeature] returning "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return v0
.end method

.method public setContentView(I)V
    .locals 3
    .param p1, "layoutResId"    # I

    .prologue
    .line 132
    const-string v0, "ActionBarSherlock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[setContentView] layoutResId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    .line 135
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->initActionBar()V

    .line 136
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 140
    const-string v0, "ActionBarSherlock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[setContentView] view: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->initActionBar()V

    .line 144
    return-void
.end method

.method public setProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 184
    const-string v0, "ActionBarSherlock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[setProgress] progress: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgress(I)V

    .line 187
    return-void
.end method

.method public setProgressBarIndeterminate(Z)V
    .locals 3
    .param p1, "indeterminate"    # Z

    .prologue
    .line 177
    const-string v0, "ActionBarSherlock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[setProgressBarIndeterminate] indeterminate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgressBarIndeterminate(Z)V

    .line 180
    return-void
.end method

.method public setProgressBarIndeterminateVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 170
    const-string v0, "ActionBarSherlock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[setProgressBarIndeterminateVisibility] visible: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 173
    return-void
.end method

.method public setProgressBarVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 163
    const-string v0, "ActionBarSherlock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[setProgressBarVisibility] visible: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    .line 166
    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 3
    .param p1, "secondaryProgress"    # I

    .prologue
    .line 191
    const-string v0, "ActionBarSherlock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[setSecondaryProgress] secondaryProgress: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setSecondaryProgress(I)V

    .line 194
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 156
    const-string v0, "ActionBarSherlock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[setTitle] title: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 159
    return-void
.end method

.method public setUiOptions(I)V
    .locals 3
    .param p1, "uiOptions"    # I

    .prologue
    .line 118
    const-string v0, "ActionBarSherlock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[setUiOptions] uiOptions: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setUiOptions(I)V

    .line 121
    return-void
.end method

.method public setUiOptions(II)V
    .locals 3
    .param p1, "uiOptions"    # I
    .param p2, "mask"    # I

    .prologue
    .line 125
    const-string v0, "ActionBarSherlock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[setUiOptions] uiOptions: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setUiOptions(II)V

    .line 128
    return-void
.end method

.method public startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;
    .locals 4
    .param p1, "callback"    # Lcom/actionbarsherlock/view/ActionMode$Callback;

    .prologue
    .line 212
    const-string v1, "ActionBarSherlock"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[startActionMode] callback: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActionMode:Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActionMode:Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;->finish()V

    .line 217
    :cond_0
    const/4 v0, 0x0

    .line 218
    .local v0, "wrapped":Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeCallbackWrapper;
    if-eqz p1, :cond_1

    .line 219
    new-instance v0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeCallbackWrapper;

    .end local v0    # "wrapped":Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeCallbackWrapper;
    invoke-direct {v0, p0, p1}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeCallbackWrapper;-><init>(Lcom/actionbarsherlock/internal/ActionBarSherlockNative;Lcom/actionbarsherlock/view/ActionMode$Callback;)V

    .line 226
    .restart local v0    # "wrapped":Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeCallbackWrapper;
    :cond_1
    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    if-nez v1, :cond_2

    .line 227
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActionMode:Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;

    .line 229
    :cond_2
    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/actionbarsherlock/ActionBarSherlock$OnActionModeStartedListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActionMode:Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;

    if-eqz v1, :cond_3

    .line 230
    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/actionbarsherlock/ActionBarSherlock$OnActionModeStartedListener;

    iget-object v2, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActionMode:Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;

    invoke-interface {v1, v2}, Lcom/actionbarsherlock/ActionBarSherlock$OnActionModeStartedListener;->onActionModeStarted(Lcom/actionbarsherlock/view/ActionMode;)V

    .line 233
    :cond_3
    iget-object v1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;->mActionMode:Lcom/actionbarsherlock/internal/ActionBarSherlockNative$ActionModeWrapper;

    return-object v1
.end method
