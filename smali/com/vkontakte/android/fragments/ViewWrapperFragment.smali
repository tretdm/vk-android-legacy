.class public Lcom/vkontakte/android/fragments/ViewWrapperFragment;
.super Landroid/app/Fragment;
.source "ViewWrapperFragment.java"


# instance fields
.field private wrapped:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "wrapped"    # Landroid/view/View;

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ViewWrapperFragment;->wrapped:Landroid/view/View;

    .line 15
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "state"    # Landroid/os/Bundle;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ViewWrapperFragment;->wrapped:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ViewWrapperFragment;->wrapped:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ViewWrapperFragment;->wrapped:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ViewWrapperFragment;->wrapped:Landroid/view/View;

    return-object v0
.end method
