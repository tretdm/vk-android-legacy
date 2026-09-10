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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$9;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 366
    const/4 v2, 0x3

    new-array v1, v2, [Landroid/view/View;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$9;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$25(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Landroid/view/View;

    move-result-object v2

    const v5, 0x7f09018a

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$9;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$25(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Landroid/view/View;

    move-result-object v2

    const v5, 0x7f09018b

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x2

    iget-object v5, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$9;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$25(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f09018c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    aput-object v5, v1, v2

    .line 367
    .local v1, "views":[Landroid/view/View;
    array-length v6, v1

    move v5, v4

    :goto_0
    if-lt v5, v6, :cond_1

    .line 369
    sget-boolean v2, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v2, :cond_0

    .line 370
    iget-object v2, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$9;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$16(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)V

    .line 371
    :cond_0
    return-void

    .line 367
    :cond_1
    aget-object v0, v1, v5

    .line 368
    .local v0, "view":Landroid/view/View;
    if-ne v0, p1, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 367
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_0

    :cond_2
    move v2, v4

    .line 368
    goto :goto_1
.end method
