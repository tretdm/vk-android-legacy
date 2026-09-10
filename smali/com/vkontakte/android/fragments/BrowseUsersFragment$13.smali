.class Lcom/vkontakte/android/fragments/BrowseUsersFragment$13;
.super Ljava/lang/Object;
.source "BrowseUsersFragment.java"

# interfaces
.implements Lcom/vkontakte/android/fragments/CitySelectFragment$CityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/BrowseUsersFragment;->selectCity()V
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
    .line 453
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$13;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/vkontakte/android/data/database/City;)V
    .locals 3
    .param p1, "item"    # Lcom/vkontakte/android/data/database/City;

    .prologue
    const v2, 0x7f080168

    .line 456
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$13;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    iget v1, p1, Lcom/vkontakte/android/data/database/City;->id:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1502(Lcom/vkontakte/android/fragments/BrowseUsersFragment;I)I

    .line 457
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$13;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1500(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)I

    move-result v0

    if-lez v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$13;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1600(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkontakte/android/data/database/City;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    :goto_0
    sget-boolean v0, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$13;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$500(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)V

    .line 463
    :cond_0
    return-void

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BrowseUsersFragment$13;->this$0:Lcom/vkontakte/android/fragments/BrowseUsersFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BrowseUsersFragment;->access$1600(Lcom/vkontakte/android/fragments/BrowseUsersFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d00b9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public bridge synthetic onItemSelected(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 453
    check-cast p1, Lcom/vkontakte/android/data/database/City;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/fragments/BrowseUsersFragment$13;->onItemSelected(Lcom/vkontakte/android/data/database/City;)V

    return-void
.end method
