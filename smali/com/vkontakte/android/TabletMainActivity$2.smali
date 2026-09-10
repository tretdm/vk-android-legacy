.class Lcom/vkontakte/android/TabletMainActivity$2;
.super Ljava/lang/Object;
.source "TabletMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/TabletMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/TabletMainActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/TabletMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/TabletMainActivity$2;->this$0:Lcom/vkontakte/android/TabletMainActivity;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/vkontakte/android/NewsfeedActivity;->sharedInstance:Lcom/vkontakte/android/NewsfeedActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewsfeedActivity;->loadData()V

    .line 190
    return-void
.end method
