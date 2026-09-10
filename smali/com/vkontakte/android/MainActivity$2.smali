.class Lcom/vkontakte/android/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/vkontakte/android/ui/TabletAwareDrawerLayout$OnFixedStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/MainActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/MainActivity;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/vkontakte/android/MainActivity$2;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFixedStateChanged(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 156
    iget-object v0, p0, Lcom/vkontakte/android/MainActivity$2;->this$0:Lcom/vkontakte/android/MainActivity;

    invoke-static {v0}, Lcom/vkontakte/android/MainActivity;->access$200(Lcom/vkontakte/android/MainActivity;)V

    .line 157
    return-void
.end method
