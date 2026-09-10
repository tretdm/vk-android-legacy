.class Lcom/vkontakte/android/fragments/GeoPlaceFragment$8;
.super Ljava/lang/Object;
.source "GeoPlaceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/GeoPlaceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$8;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 166
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 167
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "place_id"

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$8;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->access$1(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)Lcom/vkontakte/android/GeoAttachment;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/GeoAttachment;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 168
    const-string v1, "type"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 169
    const-string v1, "title"

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$8;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060235

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 170
    const-string v1, "UserListFragment"

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$8;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 171
    return-void
.end method
