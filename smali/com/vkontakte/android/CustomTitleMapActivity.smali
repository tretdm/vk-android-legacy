.class public abstract Lcom/vkontakte/android/CustomTitleMapActivity;
.super Lcom/google/android/maps/MapActivity;
.source "CustomTitleMapActivity.java"


# instance fields
.field public customTitleResID:I

.field public impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

.field public inTab:Z

.field private titleHidden:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    .line 17
    const v0, 0x7f03004d

    iput v0, p0, Lcom/vkontakte/android/CustomTitleMapActivity;->customTitleResID:I

    .line 19
    iput-boolean v1, p0, Lcom/vkontakte/android/CustomTitleMapActivity;->inTab:Z

    .line 20
    iput-boolean v1, p0, Lcom/vkontakte/android/CustomTitleMapActivity;->titleHidden:Z

    .line 15
    return-void
.end method


# virtual methods
.method public addViewAtLeft(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleMapActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/CustomTitleActivityImpl;->addViewAtLeft(Landroid/view/View;)V

    .line 57
    return-void
.end method

.method public addViewAtRight(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleMapActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/CustomTitleActivityImpl;->addViewAtRight(Landroid/view/View;)V

    .line 53
    return-void
.end method

.method public hideProgress()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method protected hideTitle()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 30
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/CustomTitleMapActivity;->requestWindowFeature(I)Z

    .line 31
    iput-boolean v0, p0, Lcom/vkontakte/android/CustomTitleMapActivity;->titleHidden:Z

    .line 32
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/vkontakte/android/CustomTitleMapActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 26
    .local v0, "window":Landroid/view/Window;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 27
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    sput-object p0, Lcom/vkontakte/android/Global;->currentContext:Landroid/content/Context;

    .line 68
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onPause()V

    .line 77
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleMapActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleMapActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v0}, Lcom/vkontakte/android/CustomTitleActivityImpl;->onPause()V

    .line 78
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onResume()V

    .line 72
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleMapActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleMapActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v0}, Lcom/vkontakte/android/CustomTitleActivityImpl;->onResume()V

    .line 73
    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 3
    .param p1, "layoutResID"    # I

    .prologue
    .line 35
    new-instance v0, Lcom/vkontakte/android/CustomTitleActivityImpl;

    iget v1, p0, Lcom/vkontakte/android/CustomTitleMapActivity;->customTitleResID:I

    iget-boolean v2, p0, Lcom/vkontakte/android/CustomTitleMapActivity;->inTab:Z

    invoke-direct {v0, p0, v1, v2}, Lcom/vkontakte/android/CustomTitleActivityImpl;-><init>(Landroid/app/Activity;IZ)V

    iput-object v0, p0, Lcom/vkontakte/android/CustomTitleMapActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    .line 36
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleMapActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    iget-boolean v1, p0, Lcom/vkontakte/android/CustomTitleMapActivity;->titleHidden:Z

    iput-boolean v1, v0, Lcom/vkontakte/android/CustomTitleActivityImpl;->titleHidden:Z

    .line 38
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleMapActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/CustomTitleActivityImpl;->createContentView(I)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/android/maps/MapActivity;->setContentView(Landroid/view/View;)V

    .line 40
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 43
    new-instance v0, Lcom/vkontakte/android/CustomTitleActivityImpl;

    iget v1, p0, Lcom/vkontakte/android/CustomTitleMapActivity;->customTitleResID:I

    iget-boolean v2, p0, Lcom/vkontakte/android/CustomTitleMapActivity;->inTab:Z

    invoke-direct {v0, p0, v1, v2}, Lcom/vkontakte/android/CustomTitleActivityImpl;-><init>(Landroid/app/Activity;IZ)V

    iput-object v0, p0, Lcom/vkontakte/android/CustomTitleMapActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleMapActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    iget-boolean v1, p0, Lcom/vkontakte/android/CustomTitleMapActivity;->titleHidden:Z

    iput-boolean v1, v0, Lcom/vkontakte/android/CustomTitleActivityImpl;->titleHidden:Z

    .line 47
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleMapActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/CustomTitleActivityImpl;->createContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/android/maps/MapActivity;->setContentView(Landroid/view/View;)V

    .line 49
    return-void
.end method

.method public showProgress()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method
