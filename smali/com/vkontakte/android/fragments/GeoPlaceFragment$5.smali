.class Lcom/vkontakte/android/fragments/GeoPlaceFragment$5;
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
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$5;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/GeoPlaceFragment$5;)Lcom/vkontakte/android/fragments/GeoPlaceFragment;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$5;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "geo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$5;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->access$0(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)Lcom/vkontakte/android/GeoPlace;

    move-result-object v4

    iget-wide v4, v4, Lcom/vkontakte/android/GeoPlace;->lat:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$5;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->access$0(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)Lcom/vkontakte/android/GeoPlace;

    move-result-object v4

    iget-wide v4, v4, Lcom/vkontakte/android/GeoPlace;->lon:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?z=18&q="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$5;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->access$0(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)Lcom/vkontakte/android/GeoPlace;

    move-result-object v4

    iget-wide v4, v4, Lcom/vkontakte/android/GeoPlace;->lat:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$5;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->access$0(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)Lcom/vkontakte/android/GeoPlace;

    move-result-object v4

    iget-wide v4, v4, Lcom/vkontakte/android/GeoPlace;->lon:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 119
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$5;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    invoke-virtual {v2, v0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v1

    .line 122
    .local v1, "x":Ljava/lang/Throwable;
    new-instance v2, Lcom/vkontakte/android/VKAlertDialog$Builder;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$5;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 123
    const v3, 0x7f060216

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 124
    const v3, 0x7f060217

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 125
    const v3, 0x7f060218

    new-instance v4, Lcom/vkontakte/android/fragments/GeoPlaceFragment$5$1;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment$5$1;-><init>(Lcom/vkontakte/android/fragments/GeoPlaceFragment$5;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 133
    const v3, 0x7f0600e6

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 134
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
