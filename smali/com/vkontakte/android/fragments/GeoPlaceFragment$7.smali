.class Lcom/vkontakte/android/fragments/GeoPlaceFragment$7;
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
    .line 155
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$7;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 158
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$7;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->access$000(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)Lcom/vkontakte/android/GeoPlace;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$7;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->access$000(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)Lcom/vkontakte/android/GeoPlace;

    move-result-object v1

    iget v1, v1, Lcom/vkontakte/android/GeoPlace;->groupID:I

    if-nez v1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 160
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "id"

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$7;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->access$000(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)Lcom/vkontakte/android/GeoPlace;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/GeoPlace;->groupID:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    const-string v1, "ProfileFragment"

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$7;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto :goto_0
.end method
