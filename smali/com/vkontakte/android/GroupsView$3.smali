.class Lcom/vkontakte/android/GroupsView$3;
.super Ljava/lang/Object;
.source "GroupsView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/GroupsView;->createSections()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/vkontakte/android/api/Group;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/GroupsView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/GroupsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/GroupsView$3;->this$0:Lcom/vkontakte/android/GroupsView;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/vkontakte/android/api/Group;Lcom/vkontakte/android/api/Group;)I
    .locals 2
    .param p1, "lhs"    # Lcom/vkontakte/android/api/Group;
    .param p2, "rhs"    # Lcom/vkontakte/android/api/Group;

    .prologue
    .line 190
    iget v0, p1, Lcom/vkontakte/android/api/Group;->startTime:I

    iget v1, p2, Lcom/vkontakte/android/api/Group;->startTime:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/vkontakte/android/api/Group;

    check-cast p2, Lcom/vkontakte/android/api/Group;

    invoke-virtual {p0, p1, p2}, Lcom/vkontakte/android/GroupsView$3;->compare(Lcom/vkontakte/android/api/Group;Lcom/vkontakte/android/api/Group;)I

    move-result v0

    return v0
.end method
