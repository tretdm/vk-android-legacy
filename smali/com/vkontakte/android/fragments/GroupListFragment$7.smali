.class Lcom/vkontakte/android/fragments/GroupListFragment$7;
.super Ljava/lang/Object;
.source "GroupListFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/GroupListFragment;->createSections()V
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
.field final synthetic this$0:Lcom/vkontakte/android/fragments/GroupListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/GroupListFragment;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GroupListFragment$7;->this$0:Lcom/vkontakte/android/fragments/GroupListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/vkontakte/android/api/Group;Lcom/vkontakte/android/api/Group;)I
    .locals 4
    .param p1, "lhs"    # Lcom/vkontakte/android/api/Group;
    .param p2, "rhs"    # Lcom/vkontakte/android/api/Group;

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 270
    iget v2, p1, Lcom/vkontakte/android/api/Group;->startTime:I

    iget v3, p2, Lcom/vkontakte/android/api/Group;->startTime:I

    if-ne v2, v3, :cond_2

    .line 271
    iget v2, p1, Lcom/vkontakte/android/api/Group;->id:I

    iget v3, p2, Lcom/vkontakte/android/api/Group;->id:I

    if-le v2, v3, :cond_1

    .line 273
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 271
    goto :goto_0

    .line 273
    :cond_2
    iget v2, p1, Lcom/vkontakte/android/api/Group;->startTime:I

    iget v3, p2, Lcom/vkontakte/android/api/Group;->startTime:I

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 267
    check-cast p1, Lcom/vkontakte/android/api/Group;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/vkontakte/android/api/Group;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/vkontakte/android/fragments/GroupListFragment$7;->compare(Lcom/vkontakte/android/api/Group;Lcom/vkontakte/android/api/Group;)I

    move-result v0

    return v0
.end method
