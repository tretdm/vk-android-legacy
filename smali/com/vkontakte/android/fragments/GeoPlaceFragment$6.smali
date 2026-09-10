.class Lcom/vkontakte/android/fragments/GeoPlaceFragment$6;
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
    .line 143
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$6;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 146
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 147
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "point"

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$6;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->access$100(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)Lcom/vkontakte/android/GeoAttachment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 148
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$6;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 149
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$6;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 150
    return-void
.end method
