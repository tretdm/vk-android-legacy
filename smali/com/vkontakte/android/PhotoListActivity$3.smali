.class Lcom/vkontakte/android/PhotoListActivity$3;
.super Ljava/lang/Object;
.source "PhotoListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoListActivity;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoListActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoListActivity$3;->this$0:Lcom/vkontakte/android/PhotoListActivity;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListActivity$3;->this$0:Lcom/vkontakte/android/PhotoListActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoListActivity;->access$0(Lcom/vkontakte/android/PhotoListActivity;)Lcom/vkontakte/android/PhotoListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoListView;->onDeactivate()V

    .line 84
    return-void
.end method
