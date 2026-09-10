.class Lcom/vkontakte/android/GroupsActivity$16;
.super Ljava/lang/Object;
.source "GroupsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/GroupsActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/GroupsActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/GroupsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/GroupsActivity$16;->this$0:Lcom/vkontakte/android/GroupsActivity;

    .line 848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/vkontakte/android/GroupsActivity$16;->this$0:Lcom/vkontakte/android/GroupsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsActivity;->access$11(Lcom/vkontakte/android/GroupsActivity;)Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/GroupsActivity$GroupsAdapter;->notifyDataSetInvalidated()V

    .line 850
    return-void
.end method
