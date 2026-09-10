.class public Lcom/vkontakte/android/BirthdayBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BirthdayBroadcastReceiver.java"


# static fields
.field private static final ID_BIRTHDAY_NOTIFICATION:I = 0x1f4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getCurrentDate(J)I
    .locals 3
    .param p1, "t"    # J

    .prologue
    .line 114
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 115
    .local v0, "d":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v2

    mul-int/lit16 v2, v2, 0x2710

    add-int/2addr v1, v2

    return v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 31
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v26

    const-string v27, "last_birthday_notify"

    const/16 v28, 0x0

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 26
    .local v11, "lastDate":I
    const-string v26, "force"

    const/16 v27, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v26

    if-nez v26, :cond_2

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/BirthdayBroadcastReceiver;->getCurrentDate(J)I

    move-result v26

    move/from16 v0, v26

    if-ne v11, v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v26

    const-string v27, "last_birthday_notify"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/BirthdayBroadcastReceiver;->getCurrentDate(J)I

    move-result v28

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 30
    :cond_2
    const-string v26, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move-wide/from16 v2, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v20

    .line 31
    .local v20, "time":J
    invoke-static/range {v20 .. v21}, Lcom/vkontakte/android/cache/Cache;->getBirthdays(J)Ljava/util/ArrayList;

    move-result-object v6

    .line 32
    .local v6, "bdays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-lez v26, :cond_3

    .line 34
    const/high16 v26, 0x42200000    # 40.0f

    invoke-static/range {v26 .. v26}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v17

    .line 35
    .local v17, "psize":I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v14, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v23, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    new-instance v8, Ljava/util/Date;

    move-wide/from16 v0, v20

    invoke-direct {v8, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 39
    .local v8, "date":Ljava/util/Date;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/util/Date;->getDate()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, "."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v8}, Ljava/util/Date;->getMonth()I

    move-result v27

    add-int/lit8 v27, v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 40
    .local v22, "today":Ljava/lang/String;
    new-instance v9, Ljava/util/Date;

    const-wide/32 v26, 0x5265c00

    add-long v26, v26, v20

    move-wide/from16 v0, v26

    invoke-direct {v9, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 41
    .local v9, "date2":Ljava/util/Date;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/Date;->getDate()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, "."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v9}, Ljava/util/Date;->getMonth()I

    move-result v27

    add-int/lit8 v27, v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 43
    .local v25, "yesterday":Ljava/lang/String;
    const/4 v10, 0x0

    .line 44
    .local v10, "hasToday":Z
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_1
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-nez v27, :cond_4

    .line 65
    if-eqz v10, :cond_0

    .line 66
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f060148

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, ", "

    move-object/from16 v0, v30

    invoke-static {v0, v14}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-virtual/range {v26 .. v28}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 69
    .local v15, "notifyText":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    .line 70
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 71
    .local v5, "args":Landroid/os/Bundle;
    const-string v27, "id"

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v26

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v26, v0

    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    new-instance v13, Landroid/content/Intent;

    const-class v26, Lcom/vkontakte/android/FragmentWrapperActivity;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v13, "nIntent":Landroid/content/Intent;
    const-string v26, "class"

    const-string v27, "ProfileFragment"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string v26, "args"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 85
    :goto_2
    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "birthday"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v27, Ljava/util/Random;

    invoke-direct/range {v27 .. v27}, Ljava/util/Random;-><init>()V

    invoke-virtual/range {v27 .. v27}, Ljava/util/Random;->nextInt()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const/16 v26, 0x0

    const/high16 v27, 0x10000000

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 88
    .local v7, "cIntent":Landroid/app/PendingIntent;
    sget v26, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v27, 0x10

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_b

    .line 89
    new-instance v12, Landroid/app/Notification;

    const v26, 0x7f0201af

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 90
    .local v12, "n":Landroid/app/Notification;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f06000f

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v12, v0, v1, v15, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 102
    :goto_3
    iget v0, v12, Landroid/app/Notification;->flags:I

    move/from16 v26, v0

    or-int/lit8 v26, v26, 0x10

    move/from16 v0, v26

    iput v0, v12, Landroid/app/Notification;->flags:I

    .line 103
    const-string v26, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/NotificationManager;

    .line 104
    .local v18, "srv":Landroid/app/NotificationManager;
    const/16 v26, 0x1f4

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1, v12}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 110
    .end local v5    # "args":Landroid/os/Bundle;
    .end local v7    # "cIntent":Landroid/app/PendingIntent;
    .end local v8    # "date":Ljava/util/Date;
    .end local v9    # "date2":Ljava/util/Date;
    .end local v10    # "hasToday":Z
    .end local v12    # "n":Landroid/app/Notification;
    .end local v13    # "nIntent":Landroid/content/Intent;
    .end local v14    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "notifyText":Ljava/lang/String;
    .end local v17    # "psize":I
    .end local v18    # "srv":Landroid/app/NotificationManager;
    .end local v22    # "today":Ljava/lang/String;
    .end local v23    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .end local v25    # "yesterday":Ljava/lang/String;
    :cond_3
    sget-object v26, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    if-eqz v26, :cond_0

    sget-object v26, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    invoke-virtual/range {v26 .. v26}, Lcom/vkontakte/android/MenuListView;->updateBirthdays()V

    goto/16 :goto_0

    .line 44
    .restart local v8    # "date":Ljava/util/Date;
    .restart local v9    # "date2":Ljava/util/Date;
    .restart local v10    # "hasToday":Z
    .restart local v14    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17    # "psize":I
    .restart local v22    # "today":Ljava/lang/String;
    .restart local v23    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .restart local v25    # "yesterday":Ljava/lang/String;
    :cond_4
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/vkontakte/android/UserProfile;

    .line 46
    .local v16, "p":Lcom/vkontakte/android/UserProfile;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->bdate:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_5

    const/4 v10, 0x1

    .line 48
    :cond_5
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->bdate:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_6

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_6
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->bdate:Ljava/lang/String;

    move-object/from16 v27, v0

    const-string v28, "\\."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 50
    .local v19, "ss":[Ljava/lang/String;
    const/16 v27, 0x2

    aget-object v27, v19, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 52
    .local v24, "year":I
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->bdate:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_8

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f06001d

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 59
    :goto_4
    if-lez v24, :cond_7

    .line 60
    invoke-virtual {v8}, Ljava/util/Date;->getYear()I

    move-result v27

    move/from16 v0, v27

    add-int/lit16 v0, v0, 0x76c

    move/from16 v27, v0

    sub-int v4, v27, v24

    .line 61
    .local v4, "age":I
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, ", "

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0x7f0d0038

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    move/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v4, v1}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 63
    .end local v4    # "age":I
    :cond_7
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 54
    :cond_8
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->bdate:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_9

    .line 55
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f06014a

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    goto :goto_4

    .line 57
    :cond_9
    new-instance v27, Ljava/lang/StringBuilder;

    const/16 v28, 0x0

    aget-object v28, v19, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0d0001

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    aget-object v29, v19, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    aget-object v28, v28, v29

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    goto/16 :goto_4

    .line 76
    .end local v16    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v19    # "ss":[Ljava/lang/String;
    .end local v24    # "year":I
    .restart local v15    # "notifyText":Ljava/lang/String;
    :cond_a
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 77
    .restart local v5    # "args":Landroid/os/Bundle;
    const-string v26, "type"

    const/16 v27, 0x3

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    const-string v26, "users"

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 79
    const-string v26, "extended"

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 80
    const-string v26, "title"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f060149

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 81
    new-instance v13, Landroid/content/Intent;

    const-class v26, Lcom/vkontakte/android/FragmentWrapperActivity;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .restart local v13    # "nIntent":Landroid/content/Intent;
    const-string v26, "class"

    const-string v27, "UserListFragment"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v26, "args"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 92
    .restart local v7    # "cIntent":Landroid/app/PendingIntent;
    :cond_b
    new-instance v26, Landroid/app/Notification$BigTextStyle;

    new-instance v27, Landroid/app/Notification$Builder;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 93
    const/16 v28, -0x2

    invoke-virtual/range {v27 .. v28}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v27

    .line 94
    const v28, 0x7f060160

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v27

    .line 95
    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v27

    .line 96
    const v28, 0x7f0201af

    invoke-virtual/range {v27 .. v28}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v27

    .line 97
    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v27

    .line 92
    invoke-direct/range {v26 .. v27}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 98
    const v27, 0x7f060160

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v26

    .line 99
    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v26

    .line 100
    invoke-virtual/range {v26 .. v26}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v12

    .line 92
    .restart local v12    # "n":Landroid/app/Notification;
    goto/16 :goto_3
.end method
