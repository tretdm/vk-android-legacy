.class Lcom/vkontakte/android/fragments/BrowseUsersFragment$9;
.super Ljava/lang/Object;
.source "BrowseUsersFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/BrowseUsersFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$9;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 365
    const/4 v5, 0x3

    new-array v4, v5, [Landroid/view/View;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$9;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1600(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Landroid/view/View;

    move-result-object v5

    const v8, 0x7f08016a

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$9;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1600(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Landroid/view/View;

    move-result-object v5

    const v8, 0x7f08016b

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x2

    iget-object v8, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$9;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v8}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1600(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f08016c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    aput-object v8, v4, v5

    .line 366
    .local v4, "views":[Landroid/view/View;
    move-object v0, v4

    .local v0, "arr$":[Landroid/view/View;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 367
    .local v3, "view":Landroid/view/View;
    if-ne v3, p1, :cond_0

    move v5, v6

    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    .line 366
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v5, v7

    .line 367
    goto :goto_1

    .line 368
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    sget-boolean v5, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v5, :cond_2

    .line 369
    iget-object v5, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$9;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$500(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)V

    .line 370
    :cond_2
    return-void
.end method
