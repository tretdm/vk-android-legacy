.class public Lcom/vkontakte/android/EditableUserListView$EditableUserAdapter;
.super Lcom/vkontakte/android/UserListView$UserListAdapter;
.source "EditableUserListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/EditableUserListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EditableUserAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/EditableUserListView;


# direct methods
.method protected constructor <init>(Lcom/vkontakte/android/EditableUserListView;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/vkontakte/android/EditableUserListView$EditableUserAdapter;->this$0:Lcom/vkontakte/android/EditableUserListView;

    invoke-direct {p0, p1}, Lcom/vkontakte/android/UserListView$UserListAdapter;-><init>(Lcom/vkontakte/android/UserListView;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "pos"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "group"    # Landroid/view/ViewGroup;

    .prologue
    const v3, 0x7f0800de

    .line 39
    if-nez p2, :cond_0

    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/EditableUserListView$EditableUserAdapter;->this$0:Lcom/vkontakte/android/EditableUserListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/EditableUserListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030046

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/EditableUserListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 42
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/EditableUserListView$EditableUserAdapter;->this$0:Lcom/vkontakte/android/EditableUserListView;

    invoke-static {v1}, Lcom/vkontakte/android/EditableUserListView;->access$1(Lcom/vkontakte/android/EditableUserListView;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    :cond_0
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/EditableUserListView$EditableUserAdapter;->this$0:Lcom/vkontakte/android/EditableUserListView;

    iget-object v1, v1, Lcom/vkontakte/android/EditableUserListView;->users:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/vkontakte/android/UserListView$UserListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
