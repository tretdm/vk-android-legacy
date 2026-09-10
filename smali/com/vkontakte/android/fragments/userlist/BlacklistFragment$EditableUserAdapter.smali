.class public Lcom/vkontakte/android/fragments/userlist/BlacklistFragment$EditableUserAdapter;
.super Lcom/vkontakte/android/fragments/AbsUserListFragment$UserListAdapter;
.source "BlacklistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EditableUserAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;


# direct methods
.method protected constructor <init>(Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment$EditableUserAdapter;->this$0:Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;

    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/AbsUserListFragment$UserListAdapter;-><init>(Lcom/vkontakte/android/fragments/AbsUserListFragment;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "pos"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "group"    # Landroid/view/ViewGroup;

    .prologue
    const v3, 0x7f0800ed

    .line 97
    if-nez p2, :cond_0

    .line 98
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment$EditableUserAdapter;->this$0:Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f03004f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 100
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment$EditableUserAdapter;->this$0:Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;->access$700(Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    :cond_0
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment$EditableUserAdapter;->this$0:Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;->access$800(Lcom/vkontakte/android/fragments/userlist/BlacklistFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 103
    invoke-super {p0, p1, p2, p3}, Lcom/vkontakte/android/fragments/AbsUserListFragment$UserListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
