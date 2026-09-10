.class Lcom/vkontakte/android/fragments/GeoPlaceFragment$3;
.super Ljava/lang/Object;
.source "GeoPlaceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/GeoPlaceFragment;->onAttach(Landroid/app/Activity;)V
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
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$3;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$3;->this$0:Lcom/vkontakte/android/fragments/GeoPlaceFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 83
    return-void
.end method
