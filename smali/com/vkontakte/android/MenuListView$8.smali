.class Lcom/vkontakte/android/MenuListView$8;
.super Ljava/lang/Object;
.source "MenuListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/MenuListView;->updateBirthdays()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/MenuListView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/MenuListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/MenuListView$8;->this$0:Lcom/vkontakte/android/MenuListView;

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/MenuListView$8;)Lcom/vkontakte/android/MenuListView;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/vkontakte/android/MenuListView$8;->this$0:Lcom/vkontakte/android/MenuListView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 291
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v20

    const-string v21, "Update birthdays"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 292
    const/4 v4, 0x0

    .line 293
    .local v4, "_rtext":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lcom/vkontakte/android/cache/Cache;->getBirthdays(J)Ljava/util/ArrayList;

    move-result-object v6

    .line 295
    .local v6, "bdays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const/4 v3, 0x0

    .line 296
    .local v3, "_info":Landroid/os/Bundle;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_0

    .line 298
    const/high16 v20, 0x42200000    # 40.0f

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v13

    .line 299
    .local v13, "psize":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v11, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v17, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    new-instance v7, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 303
    .local v7, "date":Ljava/util/Date;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/util/Date;->getDate()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v7}, Ljava/util/Date;->getMonth()I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 304
    .local v16, "today":Ljava/lang/String;
    new-instance v8, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/32 v22, 0x5265c00

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    invoke-direct {v8, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 305
    .local v8, "date2":Ljava/util/Date;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/util/Date;->getDate()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Ljava/util/Date;->getMonth()I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 307
    .local v19, "yesterday":Ljava/lang/String;
    const/4 v9, 0x0

    .line 308
    .local v9, "hasToday":Z
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_1

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MenuListView$8;->this$0:Lcom/vkontakte/android/MenuListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    if-eqz v9, :cond_a

    const v20, 0x7f08015f

    :goto_1
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, ", "

    move-object/from16 v0, v24

    invoke-static {v0, v11}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v21

    move/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 332
    new-instance v3, Landroid/os/Bundle;

    .end local v3    # "_info":Landroid/os/Bundle;
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 333
    .restart local v3    # "_info":Landroid/os/Bundle;
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 334
    const-string v20, "_class"

    const-string v21, "ProfileFragment"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 335
    const-string v21, "id"

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v20, v0

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 349
    .end local v7    # "date":Ljava/util/Date;
    .end local v8    # "date2":Ljava/util/Date;
    .end local v9    # "hasToday":Z
    .end local v11    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "psize":I
    .end local v16    # "today":Ljava/lang/String;
    .end local v17    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .end local v19    # "yesterday":Ljava/lang/String;
    :cond_0
    :goto_2
    move-object v10, v3

    .line 350
    .local v10, "info":Landroid/os/Bundle;
    move-object v14, v4

    .line 351
    .local v14, "rtext":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MenuListView$8;->this$0:Lcom/vkontakte/android/MenuListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v20

    check-cast v20, Landroid/app/Activity;

    new-instance v21, Lcom/vkontakte/android/MenuListView$8$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10, v14}, Lcom/vkontakte/android/MenuListView$8$1;-><init>(Lcom/vkontakte/android/MenuListView$8;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v21}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 358
    return-void

    .line 308
    .end local v10    # "info":Landroid/os/Bundle;
    .end local v14    # "rtext":Ljava/lang/String;
    .restart local v7    # "date":Ljava/util/Date;
    .restart local v8    # "date2":Ljava/util/Date;
    .restart local v9    # "hasToday":Z
    .restart local v11    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v13    # "psize":I
    .restart local v16    # "today":Ljava/lang/String;
    .restart local v17    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .restart local v19    # "yesterday":Ljava/lang/String;
    :cond_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vkontakte/android/UserProfile;

    .line 310
    .local v12, "p":Lcom/vkontakte/android/UserProfile;
    iget-object v0, v12, Lcom/vkontakte/android/UserProfile;->bdate:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    const/4 v9, 0x1

    .line 312
    :cond_2
    if-eqz v9, :cond_3

    iget-object v0, v12, Lcom/vkontakte/android/UserProfile;->bdate:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_4

    :cond_3
    if-nez v9, :cond_5

    :cond_4
    iget-object v0, v12, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    :cond_5
    iget-object v0, v12, Lcom/vkontakte/android/UserProfile;->bdate:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "\\."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 314
    .local v15, "ss":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_7

    const/16 v21, 0x2

    aget-object v21, v15, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 316
    .local v18, "year":I
    :goto_3
    iget-object v0, v12, Lcom/vkontakte/android/UserProfile;->bdate:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MenuListView$8;->this$0:Lcom/vkontakte/android/MenuListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f080037

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v12, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 323
    :goto_4
    if-lez v18, :cond_6

    .line 324
    invoke-virtual {v7}, Ljava/util/Date;->getYear()I

    move-result v21

    move/from16 v0, v21

    add-int/lit16 v0, v0, 0x76c

    move/from16 v21, v0

    sub-int v5, v21, v18

    .line 325
    .local v5, "age":I
    iget-object v0, v12, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, ", "

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const v22, 0x7f0d0038

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MenuListView$8;->this$0:Lcom/vkontakte/android/MenuListView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/vkontakte/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v5, v1}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v12, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 327
    .end local v5    # "age":I
    :cond_6
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 314
    .end local v18    # "year":I
    :cond_7
    const/16 v18, 0x0

    goto :goto_3

    .line 318
    .restart local v18    # "year":I
    :cond_8
    iget-object v0, v12, Lcom/vkontakte/android/UserProfile;->bdate:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MenuListView$8;->this$0:Lcom/vkontakte/android/MenuListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f080163

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v12, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    goto :goto_4

    .line 321
    :cond_9
    new-instance v21, Ljava/lang/StringBuilder;

    const/16 v22, 0x0

    aget-object v22, v15, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MenuListView$8;->this$0:Lcom/vkontakte/android/MenuListView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0d0001

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    aget-object v23, v15, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    aget-object v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v12, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    goto/16 :goto_4

    .line 329
    .end local v12    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v15    # "ss":[Ljava/lang/String;
    .end local v18    # "year":I
    :cond_a
    const v20, 0x7f080160

    goto/16 :goto_1

    .line 337
    :cond_b
    const-string v20, "_class"

    const-string v21, "UserListFragment"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 338
    const-string v20, "type"

    const/16 v21, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 339
    const-string v20, "users"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 340
    const-string v20, "extended"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 341
    const-string v20, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/MenuListView$8;->this$0:Lcom/vkontakte/android/MenuListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f080162

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method
